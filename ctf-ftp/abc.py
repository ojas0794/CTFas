#!/usr/bin/env python

f1 = open('f1.txt').read()
f2 = open('f2.txt').read()

message = []
for i in range(len(f1)):
	if( f1[i] == f2[i] ):
		message.append(f1[i])

print (message)