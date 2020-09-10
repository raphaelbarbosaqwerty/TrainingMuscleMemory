#!/usr/bin/python2.7

class FirstClass:
    def setData(self, value):
        self.data = value

    def display(self):
        print self.data

newInstanceRealObject = FirstClass()
newInstanceRealObject.setData("That's a real object")
newInstanceRealObject.display()