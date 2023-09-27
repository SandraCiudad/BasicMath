
all:
	#program compilation
	g++ -o testBasicMath CBasicMath.cpp TestBasicMath.cpp -lcppunit --coverage -g -O0

	#memory leaks detection
	valgrind ./testBasicMath

	gcovr 
