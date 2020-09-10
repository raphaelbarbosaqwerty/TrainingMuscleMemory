#!/usr/bin/python2.7

def Generate():
	class Spam:
		count = 1
		def method(self):
			print Spam.count

	return Spam()

Generate().method()