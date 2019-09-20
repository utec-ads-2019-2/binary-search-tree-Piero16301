cmake_minimum_required(VERSION 3.14)
project(Trees)

set(CMAKE_CXX_STANDARD 17)

add_executable(Trees main.cpp mocker/mocker.cpp mocker/mocker.h tester/tester.cpp tester/tester.h bstree.h iterator.h node.h)