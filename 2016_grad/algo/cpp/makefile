CXX = g++
CXXFLAGS = -Wall -std=c++11
SRC = LBP.cpp
TARGET = app

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) -o $@ $^

run: all
	./$(TARGET)

clean:
	rm -f $(TARGET)
