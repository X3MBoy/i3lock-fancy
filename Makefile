PRGM = i3lock-fancy-dualmonitor
PREFIX ?= /usr
SHRDIR ?= $(PREFIX)/share
BINDIR ?= $(PREFIX)/bin

install:
	@install -Dm755 i3lock-fancy-dualmonitor  -t $(DESTDIR)$(BINDIR)
	@install -Dm644 ./icons/lock.png          -t $(DESTDIR)$(SHRDIR)/$(PRGM)
	@install -Dm644 LICENSE                   -t $(DESTDIR)$(SHRDIR)/licenses/$(PRGM)
	@install -Dm644 LICENSE                   -t $(DESTDIR)$(SHRDIR)/licenses/$(PRGM)

uninstall:
	@unlink $(DESTDIR)$(BINDIR)/$(PRGM) # Remove binary
	@rm -Rf $(DESTDIR)$(SHRDIR)/$(PRGM) # Remove icons
	@unlink $(DESTDIR)$(SHRDIR)/man/man1/i3lock-fancy.1 # Remove man
	@rm -Rf $(DESTDIR)$(SHRDIR)/licenses/$(PRGM) # Remove license
