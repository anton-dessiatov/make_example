main.o: main.cpp
	$(COMPILE.cc) main.cpp

main.a: main.o
	ar rcs main.a main.o

clean:
	$(RM) main.o main.a

.PHONY: clean
