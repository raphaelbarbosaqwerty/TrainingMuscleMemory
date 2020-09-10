#!/usr/bin/python2.7

def func(spam, eggs, toast=(), ham=()):
	print (spam, eggs, toast, ham)

func(1, 2)
func(1, ham=1, eggs=0)
func(spam=1, eggs=0)
func(toast=1, eggs=2, spam=3)
func(1, 2, 3, 4)