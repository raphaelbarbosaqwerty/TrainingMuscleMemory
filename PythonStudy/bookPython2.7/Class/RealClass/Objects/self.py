#!/usr/bin/python2.7

class Eggs:
	def firstMethod(self, n):
		print n

	def secondMethod(self):
		anVariable = self.m1
		anVariable(42)

Eggs().anVariable()