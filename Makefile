all: librmutil redex

clean:
	$(MAKE) -C rmutil clean
	$(MAKE) -C src clean


.PHONY: redex
redex:
	$(MAKE) -C src
	cp src/*.so ../bin

.PHONY: librmutil
librmutil:
	$(MAKE) -C rmutil
