#! /bin/sh
#
# rc.K: Fall-down into single-user mode.
#

# Set the path.
PATH=/sbin:/etc:/bin:/usr/bin

# Kill all processes.
echo
echo "Sending all processes the TERM signal."
kill -15 -1
echo -n "Waiting for processes to terminate"
for loop in 0 1 2 3 4 5 6 7; do
    sleep 1
    echo -n "."
done
echo

# Try to turn off quota and accounting.
if [ -x /usr/sbin/quotaoff ]; then
    echo "Turning off quota..."
    /usr/sbin/quotaoff -a
fi
if [ -x /sbin/accton ]; then
    echo "Turning off accounting..."
    /sbin/accton
fi

# Now go to the single user level.
echo "Telling INIT to go to single user mode (if not already there)..."
telinit -t 1 1

# This has to happen last because it could kill itself, because of
# the way init works.
echo "Sending all processes the KILL signal."
kill -9 -1
