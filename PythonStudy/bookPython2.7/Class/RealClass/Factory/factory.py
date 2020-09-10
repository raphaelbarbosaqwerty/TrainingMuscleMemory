#!/usr/bin/python2.7
def factory(aClass, *args):
	return apply(aClass, args)

class Spam:
	def doit(self, message):
		print messag 

class Person:
	def __init__(self, name, job):
		self.name = name
		self.job = job

objectOne = factory(Spam)
objectTwo = factory(Person, "Guido", "guru")