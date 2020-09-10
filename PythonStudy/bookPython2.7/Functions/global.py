#!/usr/bin/python2.7

globalScope = 88

def changeGlobalValue():
	global globalScope
	globalScope = 99

changeGlobalValue()
print globalScope