TARGETS   = h2root

CC        = gcc
CXX       = g++
FC        = gfortran
CFLAGS    = 
CXXFLAGS  = $(shell root-config --cflags)
FFLAGS    = -std=legacy
LFLAGS    = 
ROOTLIBS  = $(shell root-config --libs) -lgfortran

all:	$(TARGETS)
h2root: h2root.o zebra.o hbook.o cernlib.o kernlib.o
	$(CXX)     $(LFLAGS) -o $@ $^ $(ROOTLIBS)
%.o: %.cxx
	$(CXX)     $(CXXFLAGS) -c $<
%.o: %.c
	$(CC)      $(CFLAGS)   -c $<
%.o: %.f
	$(FC)      $(FFLAGS)   -c $<
.PHONY : clean
clean:
	rm -rf *.o
