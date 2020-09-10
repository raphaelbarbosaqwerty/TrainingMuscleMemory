#!/usr/bin/python2.7

class Spam:
	def doit(self, message):
		print message

objectOne = Spam()
objectOne.doit('Hello World')

objectTwo = Spam()
changingHere = objectTwo.doit
changingHere('Check the code to understand')

objectThree = Spam()
anotherChanginHere = Spam.doit
anotherChanginHere('objectOne', 'howdy')