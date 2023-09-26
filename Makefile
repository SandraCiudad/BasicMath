
all:
	g++ -o testBasicMath CBasicMath.cpp TestBasicMath.cpp -lcppunit 
	./testBasicMath
