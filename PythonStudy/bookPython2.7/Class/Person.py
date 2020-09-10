#!/usr/bin/python2.7

class Person:
	def __init__(self, name, job):
		self.name = name
		self.job = job
	def info(self):
		return (self.name, self.job)

mark = Person('m1', 'trainer')
dave = Person('da', 'developer')

mark.job, dave.info()