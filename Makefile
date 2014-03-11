DEPSDIR=${PWD}/deps

CPPFLAGS = -I${DEPSDIR}/include 
CXXFLAGS = -g -O0 -Wall
LDFLAGS = -L${DEPSDIR}/lib
LIBS=-lemon -lglpk
CXX = g++

OBJS = main.o MFGraph.o MethylRead.o MFGraph_solve.o MFRegionPrinter.o

all: methylFlow

test: run1 run2

main.o: main.cpp MFGraph.hpp
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c main.cpp

MFGraph.o: MFGraph.cpp MFGraph.hpp MethylRead.hpp MFRegionPrinter.hpp
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c MFGraph.cpp

MethylRead.o: MethylRead.cpp MethylRead.hpp 
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c MethylRead.cpp

MFGraph_solve.o: MFGraph_solve.cpp MFGraph.hpp MethylRead.hpp MFRegionPrinter.hpp 
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c MFGraph_solve.cpp

MFRegionPrinter.o: MFRegionPrinter.cpp MFRegionPrinter.hpp MFGraph.hpp MethylRead.hpp
	${CXX} ${CPPFLAGS} ${CXXFLAGS} -c MFRegionPrinter.cpp

test: MethylRead.o
	make -C testing all

clean:
	rm -f methylFlow
	rm -f *.o

distclean: clean
	rm -rf glpk/build Glpk.ts lemon/build Lemon.ts ${DEPSDIR}

methylFlow: Lemon.ts ${OBJS}
	${CXX} ${LDFLAGS} -o methylFlow ${OBJS} ${LIBS}

run1: methylFlow
	./methylFlow -i testing/sim1.tsv -o testing -l 1.0 -s 10.0

run2: methylFlow
	./methylFlow -i testing/sim2.tsv -o testing -l 1.0 20.0

Glpk.ts:
	(cd glpk && \
	mkdir build && \
	cd build && \
	../configure --prefix=${DEPSDIR} --disable-dependency-tracking && \
	make && \
	make install && \
	touch ../../$@)

Lemon.ts: Glpk.ts
	(cd lemon && \
	mkdir build && \
	cd build && \
	cmake -DCMAKE_INSTALL_PREFIX=${DEPSDIR} -DLEMON_ENABLE_GLPK=YES -DLEMON_GLPK_ROOT_DIR=${DEPSDIR} -DLEMON_DEFAULT_LP=GLPK .. && \
	make VERBOSE=1 && \
	make install && \
	touch ../../$@)

