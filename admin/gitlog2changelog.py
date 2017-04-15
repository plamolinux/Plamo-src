#!/usr/bin/python
# Copyright 2008 Marcus D. Hanwell <marcus@cryos.org>
# Distributed under the terms of the GNU General Public License v2 or later

# Modified by (C) 2012-2017 TAMUKI Shoichi <tamuki@linet.gr.jp>

import os, re, unicodedata, subprocess, shlex

def get_chr_width(c):
	return 2 if unicodedata.east_asian_width(c) in ["F", "W", "A"] else 1

def get_str_width(s):
	w = 0
	for c in s:
		w += get_chr_width(c)
	return w

# Execute git log with the desired command line options.
fin = os.popen("git log --date=short --stat --summary "
		"--since=\"1970-01-01 00:00:00\"", "r")
# Create a ChangeLog file in the current directory.
fout = open("ChangeLog", "w")

# Set up the loop variables in order to locate the blocks we want
authorFound = False
dateFound = False
messageFound = False
messageNL = False
messageItem = False
message = ""
filesFound = False
files = ""
prevAuthorLine = ""
commitSet = ""

# The main part of the loop
for line in fin:
	try:
		line = unicode(line, "utf-8")
	except NameError:
		pass
	# The commit line marks the start of a new commit object.
	if re.search("^commit ", line):
		# Start all over again...
		authorFound = False
		dateFound = False
		messageFound = False
		messageNL = False
		messageItem = False
		message = ""
		filesFound = False
		files = ""
	# Match the author line and extract the part we want
	elif re.search("^Author: ", line):
		author = line[8:].strip()
		authorFound = True
	# Match the date line
	elif re.search("^Date:   ", line):
		date = line[8:].strip()
		dateFound = True
	# Extract the actual commit message for this commit
	elif authorFound and dateFound and not messageFound:
		# Find the commit message if we can
		if line == "\n":
			if messageNL:
				messageFound = True
			else:
				messageNL = True
		elif line == "    \n":
			if not message.endswith("\n"):
				message += "\n"
		# The sign off line is ignored
		elif re.search("^    Signed-off-by: ", line):
			pass
		else:
			if messageItem:
				if not message.endswith("\n"):
					if not re.search("^    \s*[^*-]", line):
						message += "\n"
				if not re.search("^    \s*[*-]", line):
					messageItem = False
			else:
				if re.search("^    \s*[*-]", line):
					if not message.endswith("\n"):
						message += "\n"
					messageItem = True
			if message.endswith("."):
				message += "  "
			elif not message.endswith("\n"):
				message += " "
			message += line.strip()
	# Collect the files for this commit. FIXME: Still need to add +/- to files
	elif authorFound and dateFound and messageFound and not filesFound:
		fileList = line.split(" | ", 1)
		if len(fileList) == 2:
			if files:
				files += ", "
			files += fileList[0].strip()
		# If this line is hit all of the files have been stored for this commit
		elif re.search("^ [0-9]* files? changed, ", line):
			filesFound = True
	# All of the parts of the commit have been found - write out the entry
	if authorFound and dateFound and messageFound and filesFound:
		# First the author line, only outputted if it is the first for that
		# author on this day
		authorLine = date + "  " + author
		if not prevAuthorLine:
			fout.write(authorLine + "\n")
			commitSet = ""
		elif authorLine != prevAuthorLine:
			# Write out the commit lines
			try:
				fout.write(commitSet.encode("utf-8") + "\n")
			except TypeError:
				fout.write(commitSet + "\n")
			fout.write("\n" + authorLine + "\n")
			commitSet = ""

		# Assemble the actual commit message line(s) and limit the line length
		# to 78 characters.
		commitLine = files + ":" + message
		lc = len(commitLine)
		commit = ""
		i = j = 0
		while i < lc:
			if i == j:
				lv = 0
			commit += "\n\t* " if i == 0 else "\n\t  "
			if lv == 1:
				commit += "  "
			if get_str_width(commitLine[i:]) <= 68 - lv * 2:
				i2 = lc - 1
				n = lc - i
			else:
				w = n = 0
				while w < 68 - lv * 2:
					w += get_chr_width(commitLine[i + n])
					n += 1
				p = -1
				for s in re.finditer("\s", commitLine[i:i + n + 1]):
					p = i + s.start()
				i2 = i + n - 1 if p == -1 else p
			p = commitLine.find("\n", i, i + n)
			if 0 <= p < i2:
				i2 = p
			if i == j:
				p = commitLine.find("\n", i)
				j = lc if p == -1 else p + 1
				if re.search("^[*-]", commitLine[i:i + j - 1]):
					lv = 1
			commit += commitLine[i:i2 + 1].strip()
			i = i2 + 1

		# Concatenate the commit lines in ascending order by time
		commitSet = commit + commitSet

		# Now reset all the variables ready for a new commit block.
		authorFound = False
		dateFound = False
		messageFound = False
		messageNL = False
		messageItem = False
		message = ""
		filesFound = False
		files = ""
		prevAuthorLine = authorLine

# Write out the commit lines
try:
	fout.write(commitSet.encode("utf-8") + "\n")
except TypeError:
	fout.write(commitSet + "\n")

# Write out the relay message
#fout.write("\nFor the changes before 1.0.0, see ChangeLog.1\n")

# Close the input and output lines now that we are finished.
fin.close()
fout.close()

# Set mtime of ChangeLog
mtime = int(subprocess.check_output(shlex.split("git log -n1 "
		"--since=\"1970-01-01 00:00:00\" --pretty=format:%ct")).strip())
os.utime("ChangeLog", (mtime, mtime))
