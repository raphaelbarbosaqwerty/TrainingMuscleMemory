#!/usr/bin/python2.7

class WorkingWithConstruct:
	data = 'spam'
	def __init__(self, value):
		self.data = value
	def display(self):
		print self.data, WorkingWithConstruct.data

x = WorkingWithConstruct(1)
y = WorkingWithConstruct(2)

x.display()
y.display()