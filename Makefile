SHELL := /bin/bash
# Install juno-grub

DESTDIR=debian/juno-grub

install-core:
	install -dm755 $(DESTDIR)/etc/default/grub.d/
	install -dm755 $(DESTDIR)/usr/share/
	cp -R juno-grub $(DESTDIR)/usr/share/
	
install: install-core

uninstall:
	rm -R $(DESTDIR)/usr/share/juno-grub
