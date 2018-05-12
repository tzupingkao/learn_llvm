CXX=/Users/koushihei/install/llvm/llvm-7.0/bin/clang

# Use "-lc++" in Mac OS X
# Use "-lstdc++" in Ubuntu
test: toy.o
	$(CXX) -o test toy.o -lc++
toy.o: toy.cpp
	$(CXX) -c toy.cpp
clean:
	rm -f *.o test