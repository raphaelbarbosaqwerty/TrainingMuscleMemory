#!/usr/bin/python2.7

from SecondClass import * 

class ThirdClass(SecondClass):
	def __init__(self, value):
		self.data = value
	def __add__(self, other):
		return ThirdClass(self.data + other)
	def __mul__(self, other):
		self.data = self.data * other

a = ThirdClass("abc")
a.display()

b = a + 'xyz'
b.display()

a * 3
a.display()