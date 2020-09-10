#!/usr/bin/python2.7

def minMax(test, *args):
	res = args[0]
	for arg in args[1:]:
		if test(arg, res):
			res = arg
	return res

def lessthan(x, y): return x < y
def grtrthan(x, y): return x > y

print minMax(lessthan, 4, 2, 1, 5, 6, 3)
print minMax(grtrthan, 4, 2, 1, 5, 6, 3)