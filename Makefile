<<<<<<< HEAD
PRGM = i3lock-fancy-dualmonitor
=======
PRGM = i3lock-fancy
>>>>>>> origin/master
PREFIX ?= /usr
SHRDIR ?= $(PREFIX)/share
BINDIR ?= $(PREFIX)/bin

install:
<<<<<<< HEAD
	@install -Dm755 i3lock-fancy-dualmonitor  -t $(DESTDIR)$(BINDIR)
	@install -Dm644 lock.png                  -t $(DESTDIR)$(SHRDIR)/$(PRGM)
	@install -Dm644 LICENSE                   -t $(DESTDIR)$(SHRDIR)/licenses/$(PRGM)
=======
	@install -Dm755 i3lock-fancy          -t $(DESTDIR)$(BINDIR)
	@install -Dm644 icons/*               -t $(DESTDIR)$(SHRDIR)/$(PRGM)/icons
	@install -Dm644 doc/i3lock-fancy.1    -t $(DESTDIR)$(SHRDIR)/man/man1
	@install -Dm644 LICENSE               -t $(DESTDIR)$(SHRDIR)/licenses/$(PRGM)

uninstall:
	@unlink $(DESTDIR)$(BINDIR)/$(PRGM) # Remove binary
	@rm -Rf $(DESTDIR)$(SHRDIR)/$(PRGM) # Remove icons
	@unlink $(DESTDIR)$(SHRDIR)/man/man1/i3lock-fancy.1 # Remove man
	@rm -Rf $(DESTDIR)$(SHRDIR)/licenses/$(PRGM) # Remove license
>>>>>>> origin/master
