example: lib/lib.a main/main.a
	$(LINK.cc) main/main.a lib/lib.a -o example

lib/lib.a:
	$(MAKE) -C lib lib.a

export CXXFLAGS += -I../lib

main/main.a:
	$(MAKE) -C main main.a

# This Makefile doesn't know if anything under main/ or lib/
# has changed, so we call it explicitly every time make runs
.PHONY: lib/lib.a main/main.a

clean:
	$(MAKE) -C lib clean
	$(MAKE) -C main clean
	$(RM) example

.PHONY: clean
