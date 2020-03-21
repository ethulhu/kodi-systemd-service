VERSION := "$(shell TZ=Etc/UTC date +%Y%m%d.%H%M)-1"

all: deb

build:
	@true

test: build
	@true

manifest: test
	find lib usr > $@

deb: manifest
	bpkg-build . $(VERSION)

clean:
	rm -rf manifest *.deb *.deb.dat
