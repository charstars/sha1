TESTCFLAGS=-g -Wall -Werror
TESTLINKER=-lcunit
TESTSOURCES=test.c sha1.c
TESTBINARY=sha1test

.FORCE: test
all:
	make test

clean:
	rm -rf *.o sha1test

test:
	$(CC) $(TESTCFLAGS) -o $(TESTBINARY) $(TESTSOURCES) $(TESTLINKER)
	./$(TESTBINARY)	
