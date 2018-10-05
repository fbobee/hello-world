all: alma hello

test : cpp/bin/hello cpp/bin/test_alma
	cpp/bin/hello
	cpp/bin/test_alma

hello : cpp/src/hello.cpp
	mkdir -p cpp/bin
	g++ -o cpp/bin/hello cpp/src/hello.cpp


alma : cpp/src/alma.h cpp/src/test/TestAlma.cpp
	mkdir -p cpp/bin
	g++ -isystem cpp/dep/gtest/include -pthread cpp/src/test/TestAlma.cpp cpp/dep/gtest/build/libgtest.a -o cpp/bin/test_alma
