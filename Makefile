VERSION := "$(shell TZ=Etc/UTC date +%Y%m%d.%H%M)-1"

build:
	@true

test: build
	@true

manifest: test
	find etc lib usr > $@

deb: manifest
	bpkg-build . $(VERSION)

clean:
	rm -rf manifest *.deb *.deb.dat
