TARGET  = seenmo.out
INC_DIR = ./inc/
SRC_DIR = ./src/

CC=g++
CFLAGS  = -I${INC_DIR} -g -Wall -O3
SRC     = $(wildcard $(SRC_DIR)*.cpp)
OBJ     = $(SRC:%.cpp=%.o)
DEP     = $(SRC:%.cpp=%.d)

all: ${TARGET}


$(TARGET) : $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

-include $(DEP)

%.o : %.cpp
	$(CC) $(CFLAGS) -MMD -c $< -o $@

.PHONY: all clean exe

clean :
	rm -f $(TARGET) $(OBJ) $(DEP)

exe :
	@./$(TARGET)