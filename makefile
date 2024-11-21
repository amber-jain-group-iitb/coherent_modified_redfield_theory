all: aout

aout: mod_cmrt.o cmrt.o
	ifort -o aout mod_cmrt.o cmrt.o -O3 -llapack -lblas

%.o: %.f90
	ifort -c $<

clean:
	rm *.o aout

