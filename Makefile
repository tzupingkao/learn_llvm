CXX=/Users/tzuping/install/llvm/bin/clang

# Use "-lc++" in Mac OS X
# Use "-lstdc++" in Ubuntu
test: toy.o
	$(CXX) -o test toy.o -lstdc++
toy.o: toy.cpp
	$(CXX) -c toy.cpp
clean:
	rm -f *.o test