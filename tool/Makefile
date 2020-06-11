
all: mkimage mkbootimg

mkbootimg:
	test -e mkbootimg.git/mkbootimg.c || git submodule init && git submodule update
	make -C mkbootimg.git
	cp -a mkbootimg.git/mkbootimg ./
	cp -a mkbootimg.git/unpackbootimg ./
	make -C mkbootimg.git clean

clean:
	rm mkimage

.PHONY: clean