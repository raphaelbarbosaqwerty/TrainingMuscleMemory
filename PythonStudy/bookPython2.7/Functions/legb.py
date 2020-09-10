#!/usr/bin/python2.7

globalScope = 99

def function(localScopeOne):
	anotherLocalScopeReturn = globalScope + localScopeOne
	return anotherLocalScopeReturn

print function(1)
