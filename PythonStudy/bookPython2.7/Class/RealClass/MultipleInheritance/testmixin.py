#!/usr/bin/python2.7

from mytools import Lister

class Super:
	def __init__(self):
		self.dataOne = "spam"

class Sub(Super, Lister):
	def __init__(self):
		Super.__init__(self)
		self.dataTwo = "eggs"
		self.dataThree = 42

if __name__ == "__main__":
	X = Sub()
	print X