#!/usr/bin/python2.7

class MyBad:
	def __repr__(self):
		return "Sorry--my mistake!"

raise MyBad()