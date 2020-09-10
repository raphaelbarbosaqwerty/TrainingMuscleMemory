#!/usr/bin/python2.7

def cyaFunction():
	print "Cya"

def byeFunction():
	print "Bye"
	cyaFunction()

def helloFunction():
	print "Hello World"
	byeFunction()

helloFunction()

def doubleOfValue(firstValue, secondValue):
	return firstValue * secondValue

doubleValue = doubleOfValue(10, 20)
print doubleValue