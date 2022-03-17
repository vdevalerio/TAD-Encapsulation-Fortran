FC=gfortran
FFLAGS=-o
SOURCES= main.f95 function.f95 subroutine.f95
EXECUTABLE=main

all: 
	$(FC) $(FFLAGS) $(EXECUTABLE) $(SOURCES)

clean: 
	*.o
