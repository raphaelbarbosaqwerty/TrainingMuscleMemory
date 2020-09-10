#!/usr/bin/python2.7

class Squares:
	def __init__(self, start, stop):
		self.value = start - 1
		self.stop = stop
	def __iter__(self):
		return self
	def next(self):
		if self.value == self.stop:
			raise StopIteration
		self.value += 1
		return self.value ** 2