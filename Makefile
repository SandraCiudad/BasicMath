
all:
	#program compilation
	g++ -o testBasicMath CBasicMath.cpp TestBasicMath.cpp -lcppunit --coverage

	#memory leaks detection
	valgrind ./testBasicMath
