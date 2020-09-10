#!/usr/bin/python2.7

class Classic:
	def __getattr__(self, name):
		if name == 'age':
			return 40
		else:
			raise AttributeError

	def __setattr__(self, name, value):
		print 'set:', name, value
		if name == 'age':
			self.__dict__['_age'] = value
		else:
			self.__dict__[name] = value

x = Classic()
print x.age

x.age = 41
print x._age

x.job = 'trainer'
print x.job