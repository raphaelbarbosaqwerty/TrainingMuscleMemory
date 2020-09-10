#!/usr/bin/python2.7

try:
	action()
except NameError:
	print 'NameError'
except IndexError:
	print 'IndexError'
except KeyError:
	print 'KeyError'
except(AttributeError, TypeError, SyntaxError):
	print 'AttributeError, TypeError, SyntaxError'
else:
	print 'No Errors'

try:
	action()
except:
	print 'All exceptions'
else:
	print 'No Errors, runs okay'