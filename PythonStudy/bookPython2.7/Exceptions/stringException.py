#!/usr/bin/python2.7

GeneralOne = 'generalOne'
SpecifiOne = 'specifiOne'
SpecifiTwo = 'specifiTwo'

def raiser0(): raise GeneralOne
def raiser1(): raise SpecifiOne
def raiser2(): raise SpecifiTwo

for func in (raiser0, raiser1, raiser2):
	try:
		func()
	except(GeneralOne, SpecifiOne, SpecifiTwo):
		import sys
		print 'caught:', sys.exc_type