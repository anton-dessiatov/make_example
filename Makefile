ifneq ($(MY_DEBUG),)
export CPPFLAGS += -DMESSAGE_DEBUG=1
endif

src/example:
	$(MAKE) -C src example

.PHONY: src/example

clean:
	$(MAKE) -C src clean

.PHONY: clean
