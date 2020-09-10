#!/usr/bin/python2.7

from FirstClass import *

class SecondClass(FirstClass):
	def display(self):
		print 'Current value = "%s"' % self.data

z = SecondClass()
z.setData(42)
z.display()