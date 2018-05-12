mkdir -p $HOME/src/llvm/
mkdir -p $HOME/install/llvm/llvm-7.0

LLVVM_SRC_PATH=$HOME/src/llvm/
LLVM_INSTALL_PATH=$HOME/install/llvm/llvm-7.0

cd $LLVVM_SRC_PATH
svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm-7.0

cd $LLVVM_SRC_PATH/llvm-7.0/tools
svn co http://llvm.org/svn/llvm-project/cfe/trunk clang


cd $LLVVM_SRC_PATH/llvm-7.0/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/trunk extra

cd $LLVVM_SRC_PATH/llvm-7.0/tools
svn co http://llvm.org/svn/llvm-project/lld/trunk lld

cd $LLVVM_SRC_PATH/llvm-7.0/tools
svn co http://llvm.org/svn/llvm-project/polly/trunk polly

cd $LLVVM_SRC_PATH/llvm-7.0/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt

cd $LLVVM_SRC_PATH/llvm-7.0/projects
svn co http://llvm.org/svn/llvm-project/openmp/trunk openmp

cd $LLVVM_SRC_PATH/llvm-7.0/projects
svn co http://llvm.org/svn/llvm-project/libcxx/trunk libcxx
svn co http://llvm.org/svn/llvm-project/libcxxabi/trunk libcxxabi

cd $LLVVM_SRC_PATH/llvm-7.0/projects
svn co http://llvm.org/svn/llvm-project/test-suite/trunk test-suite


cd $LLVVM_SRC_PATH/llvm-7.0/
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=$LLVM_INSTALL_PATH ../
make -j1
