#!/usr/bin/python2.7

class TheSelf:
	def printer(self, text):
		self.message = text
		print self.message

x = TheSelf()
x.printer('The Message here :)')