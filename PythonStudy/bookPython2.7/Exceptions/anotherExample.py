#!/usr/bin/python2.7

def kaboom(x, y):
	print x + y
try:
	kaboom([0, 1, 2], "spam")
except TypeError:
	print 'The error exists!'
print 'resuming her '