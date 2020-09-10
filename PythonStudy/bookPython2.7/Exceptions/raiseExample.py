#!/usr/bin/python2.7

MyBad = "oops"

def stuff():
	raise MyBad

try:
	stuff()
except MyBad:
	print 'got it'

stuff()