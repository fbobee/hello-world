all : cpp/src/hello.cpp
	mkdir -p cpp/bin
	g++ -o cpp/bin/hello cpp/src/hello.cpp

test : cpp/bin/hello
	cpp/bin/hello

