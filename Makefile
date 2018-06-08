CC=gcc
DESTDIR=/usr/local/bin

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

mysnap: mysnap.o
	$(CC) -o mysnap mysnap.o

clean:
	rm -f mysnap mysnap.o

install:
	mkdir -p $(DESTDIR)
	cp mysnap $(DESTDIR)
	chmod 755 $(DESTDIR)/mysnap
