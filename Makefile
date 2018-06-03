.PHONY: all clean install build hello hello_small

# option 1
all:

# option 2
# all: build

clean:
	rm -f hello_normal
	rm -f hello_small

build: hello hello_small

hello:
	echo "one";
	gcc -Wall -g hello.c -o hello_normal -O0;

hello_small:
	echo "two";
	gcc -Werror hello.c -o hello_small -Os;
	strip hello_small;

install:
	@#mkdir -p $(DESTDIR)/usr/bin;
	cp hello_normal $(DESTDIR);
	cp hello_small $(DESTDIR);

#install_small:
#cp hello_small $(prefix)
