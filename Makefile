.SUFFIXES: .s .o .gb

ALL = 1.gb 3.gb 4.gb 5.gb bc.gb

all: $(ALL)

1.gb: 1.o
	rgblink -o $@ 1.o
	rgbfix -v -t MEGAMAN -m 1 -p 0 -j -l 8 $@

3.gb: 3.o
	rgblink -o $@ 3.o
	rgbfix -v -t MEGAMAN3 -m 1 -p 0 -j -l 8 $@

4.gb: 4.o programbank/4.o
	rgblink -o $@ programbank/4.o 4.o
	rgbfix -v -t MEGAMAN4 -m 1 -p 0 -j -l 8 $@

5.gb: 5.o programbank/5.o
	rgblink -o $@ programbank/5.o 5.o
	rgbfix -v -t MEGAMAN5 -m 1 -p 0 -j -l 0x33 -s -k 08 $@

bc.gb: bc.o
	rgblink -o $@ bc.o
	rgbfix -v -t BIONIC-COMMANDO -m 1 -p 0 -j -l 8 $@

.s.o:
	rgbasm -o $@ $<

4.o: text.charmap

5.o: text.charmap

clean:
	rm -f */*.o *.o $(ALL)
