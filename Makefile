all: send

send: RCSwitch.o send.o
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $+ -o $@ -lwiringPi

install:
	cp send /usr/local/bin/rcswitch
	cp srcswitch /usr/local/bin/srcswitch

clean:
	$(RM) *.o send
