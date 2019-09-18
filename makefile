

all: vtester.x stester.x 




stester.x: stester.o shapes.o 
	g++ -std=c++11 -Wall -Wextra -o stester.x stester.o shapes.o

vtester.x: vehicles.o vtester.o shapes.o
	g++ -std=c++11 -Wall -Wextra -o vtester.x vtester.o vehicles.o shapes.o

stester.o: shapes.h stester.cpp
	g++ -std=c++11 -Wall -Wextra -c -I. -I/home/courses/cop3330p/LIB/cpp stester.cpp

vehicles.o: shapes.h vehicles.h vehicles.cpp 
	g++ -std=c++11 -Wall -Wextra -c -I. -I/home/courses/cop3330p/LIB/cpp vehicles.cpp

shapes.o: shapes.h shapes.cpp 
	g++ -std=c++11 -Wall -Wextra -c -I. -I/home/courses/cop3330p/LIB/cpp shapes.cpp

vtester.o: shapes.h vehicles.h vtester.cpp
	g++ -std=c++11 -Wall -Wextra -c -I. -I/home/courses/cop3330p/LIB/cpp vtester.cpp
