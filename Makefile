CXX=/Users/tzuping/install/llvm/bin/clang

test: toy.o
	$(CXX) -o test toy.o -lc++ 
toy.o: toy.cpp
	$(CXX) -c toy.cpp
clean:
	rm -f *.o test