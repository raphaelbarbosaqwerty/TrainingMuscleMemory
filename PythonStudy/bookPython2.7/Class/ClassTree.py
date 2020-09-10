#!/usr/bin/python2.7

def classTree(cls, indent):
	print '.'*indent, cls.__name__
	for supercls in cls.__bases__:
		classTree(supercls, indent+3)

def instanceTree(inst):
	print 'Tree of', inst
	classTree(inst.__class__, 3)

def selfTest():
	class A: pass
	class B(A): pass
	class C(A): pass
	class D(B, C): pass
	class E: pass
	class F(D, E): pass
	instanceTree(B())
	instanceTree(F())

if __name__ == '__main__': selfTest()