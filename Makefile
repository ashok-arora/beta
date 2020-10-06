.PHONY: all clean

CPP = g++
BETA_FLAGS = -Iinclude/
CPP_FLAGS = -std=c++20 -Wall -Wextra -pedantic -g -o

# create build directory
CREATE_DIR : $(shell mkdir -p ./build)


# compile /examples dir with options to compile single
%: $(CREATE_DIR) ./examples/%.cpp
	@# @echo compiling $@.cpp
	@$(CPP) $^ $(BETA_FLAGS) $(CPP_FLAGS) ./build/$@
	@echo executable ./build/$@ created.


# or all files
all: $(patsubst ./examples/%.cpp, %, $(wildcard ./examples/*.cpp))

clean:
	rm -rf ./build
	@echo built binaries cleared.
