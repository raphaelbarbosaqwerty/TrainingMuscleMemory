#!/usr/bin/python2.7

try:
	try:
		raise IndexError
	finally:
		print 'spam'
finally:
	print 'SPAM'
