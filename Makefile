FUNC := clang++
copt := -c 
OBJ_DIR := ./bin/
OUTPUT_DIR := ./output/
FLAGS := -O3 -lm -g -Werror -lstdc++ -flto -fuse-ld=lld -fopenmp=libomp -march=native

CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix $(OBJ_DIR),$(notdir $(CPP_FILES:.cpp=.obj)))

TEXTURE_CPP_FILES := $(wildcard src/Textures/*.cpp)
TEXTURE_OBJ_FILES := $(addprefix $(OBJ_DIR)Textures/,$(notdir $(TEXTURE_CPP_FILES:.cpp=.obj)))

all:
	cd ./src && make
	$(FUNC) ./main.cpp -o ./main.exe ./src/*.obj ./src/Textures/*.obj $(FLAGS)

clean:
	cd ./src && make clean
	rm -f ./*.exe
	rm -f ./*.obj

clean_outputs:
	rm -f $(OUTPUT_DIR)*.ppm
