#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys, textwrap
from unicodedata import east_asian_width

__all__ = ['MBTextWrapper', 'wrap', 'fill']

def _mb_width(c):
    eaw = east_asian_width(c)
    if eaw == 'F':
        return 2
    elif eaw == 'W':
        return 2
    elif eaw == 'A':
        return 2

    return 1

class MBTextWrapper(textwrap.TextWrapper):
    def __init__(self,
                 width=70,
                 initial_indent="",
                 subsequent_indent="",
                 expand_tabs=True,
                 replace_whitespace=True,
                 fix_sentence_endings=False,
                 break_long_words=True,
                 encoding=None):
        textwrap.TextWrapper.__init__(self, width, initial_indent,
                                      subsequent_indent, expand_tabs,
                                      replace_whitespace,
                                      fix_sentence_endings,
                                      break_long_words)

        self.encoding = encoding or sys.stdout.encoding

    def _mb_len(self, str):
        #if not isinstance(str, unicode):
        #    str = unicode(str, self.encoding)

        return sum(_mb_width(c) for c in str)

    def _mb_cut(self, str, max_len):
        want_unicode = str
        #if not want_unicode:
        #    str = unicode(str, self.encoding)

        tok1, tok2 = '', ''
        l = 0
        for c in str:
            w = _mb_width(c)

            if l + w <= max_len:
                tok1 += c
            else:
                tok2 += c
            l += w

        if want_unicode:
            return tok1, tok2

        return tok1.encode(self.encoding), tok2.encode(self.encoding)

    def _handle_long_word(self, reversed_chunks, cur_line, cur_len, width):
        space_left = max(width - cur_len, 1)

        if self.break_long_words:
            cut, res = self._mb_cut(reversed_chunks[-1], space_left)
            cur_line.append(cut)
            reversed_chunks[-1] = res
        elif not cur_line:
            cur_line.append(reversed_chunks.pop())

    def _wrap_chunks(self, chunks):
        lines = []
        if self.width <= 0:
            raise ValueError("invalid width %r (must be > 0)" % self.width)

        chunks.reverse()

        while chunks:
            cur_line = []
            cur_len = 0

            if lines:
                indent = self.subsequent_indent
            else:
                indent = self.initial_indent

            width = self.width - self._mb_len(indent)

            if chunks[-1].strip() == '' and lines:
                del chunks[-1]
            while chunks:
                l = self._mb_len(chunks[-1])

                if cur_len + l <= width:
                    cur_line.append(chunks.pop())
                    cur_len += l

                else:
                    break
            if chunks and self._mb_len(chunks[-1]) > width:
                self._handle_long_word(chunks, cur_line, cur_len, width)

            if cur_line and cur_line[-1].strip() == '':
                del cur_line[-1]

            if cur_line:
                lines.append(indent + ''.join(cur_line))

        return lines

def wrap(text, width=70, **kwargs):
    w = MBTextWrapper(width=width, **kwargs)
    return w.wrap(text)

def fill(text, width=70, **kwargs):
    w = MBTextWrapper(width=width, **kwargs)
    return w.fill(text)

