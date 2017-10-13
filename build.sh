#!/bin/bash
g++ -O2 -Wall -I/usr/include/python2.7/ exampleGPIOApp.cpp jetsonGPIO.c -o exampleGPIOApp -lboost_python
