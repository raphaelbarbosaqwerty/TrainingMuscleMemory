#!/usr/bin/python2.7

class Wrapper:
	def __init__(self, object):
		self.wrapped = object

	def __getattr__(self, attrname):
		print 'Trace: ', attrname
		return getattr(self.wrapped, attrname)

myObjectToWrapper = Wrapper([1, 2, 3])
print myObjectToWrapper
myObjectToWrapper.append(4)
print myObjectToWrapper.wrapped

myObjectToWrapper = Wrapper({"a":1, "b":2})
print myObjectToWrapper.keys()