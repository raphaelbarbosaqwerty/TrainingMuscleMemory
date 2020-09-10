#!/usr/bin/python2.7

MyError = "my error"

def stuff(file):
	raise MyError

file = open('data', 'r')
try:
	stuff(file)
finally:
	file.close()
	print 'File closed'