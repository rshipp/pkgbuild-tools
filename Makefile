# Makefile for pkgbuild-tools
srcfiles = pkglint.py
binfiles = pkglint.py

all: $(srcfiles)
	# Nothing to be done. Run 'make install' instead.

install: 
	install -Dm755 $(binfiles) "$(DESTDIR)/usr/bin/pkglint.py"
	ln -sfv "pkglint.py" "$(DESTDIR)/usr/bin/pkglint"

uninstall: 
	rm -f "$(DESTDIR)/usr/bin/"{pkglint,pkglint.py}
	test -e "$(DESTDIR)/usr/bin/"* || rmdir "$(DESTDIR)/usr/bin"
	test -e "$(DESTDIR)/usr/"* || rmdir "$(DESTDIR)/usr"
