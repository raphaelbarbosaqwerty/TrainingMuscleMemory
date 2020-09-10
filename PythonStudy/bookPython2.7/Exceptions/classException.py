#!/usr/bin/python2.7

class GeneralOne: pass
class SpecifiOne(GeneralOne): pass
class SpecifiTwo(GeneralOne): pass

def raiser0():
	X = GeneralOne()
	raise X

def raiser1():
	X = SpecifiOne()
	raise X

def raiser2():
	X = SpecifiTwo()
	raise X

for func in (raiser0, raiser1, raiser2):
	try:
		func()
	except GeneralOne:
		import sys
		print 'caught:', sys.exc_type