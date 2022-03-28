lib.o: lib.cpp
	$(COMPILE.cc) lib.cpp

lib.a: lib.o
	ar rcs lib.a lib.o

clean:
	$(RM) lib.o lib.a

.PHONY: clean
