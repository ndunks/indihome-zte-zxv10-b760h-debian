
all: mkimage mkbootimg

mkbootimg:
	make -C mkbootimg.git
	cp -a mkbootimg.git/mkbootimg ./
	cp -a mkbootimg.git/unpackbootimg ./
	make -C mkbootimg.git clean

clean:
	rm mkimage

.PHONY: clean