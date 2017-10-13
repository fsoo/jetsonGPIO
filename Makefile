CC = g++
PYLIBPATH = $(shell python-config --exec-prefix)/lib/aarch64-linux-gnu
LIB = -L$(PYLIBPATH) $(shell python-config --libs) -lboost_python
OPTS = $(shell python-config --include) -O2 -fPIC

default: jetsonGPIO.so
	@python ./run.py

jetsonGPIO.so: jetsonGPIO.o
	$(CC) $(LIB) -Wl,-rpath,$(PYLIBPATH) -shared $< -o $@ -lboost_python

jetsonGPIO.o: jetsonGPIO.c Makefile
	$(CC) $(OPTS) -c $< -o $@

clean:
	rm -rf *.so *.o

.PHONY: default clean
