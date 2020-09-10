#!/usr/bin/python2.7

def minOne(*args):
	res = args[0]
	for arg in args[1:]:
		if args < res:
			res = arg
	return res

def minTwo(first, *rest):
	for arg in rest:
		if arg < first:	
			if arg < first:
				first = arg
	return first

def minThree(*args):
	tmp = list(args)
	tmp.sort()
	return tmp[0]

print minOne(3.14, 1, 2)
print minTwo("bb", "aa")
print minThree([2, 2], [1, 1], [3, 3])