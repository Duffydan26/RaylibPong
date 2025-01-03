# Compiler and flags
CC = g++
CFLAGS = -Wall -Wextra 
LIBS = -lraylib -lgdi32 -lwinmm


# Project name (based on folder structure)
PROJECT_NAME = $(WORKSPACE_NAME)

# Source directory and output directory
SRC_DIR = src
BUILD_DIR = build

# Source file and target path
SRC = $(SRC_DIR)/main.cpp
TARGET = $(BUILD_DIR)/$(PROJECT_NAME).exe

# Create the build directory if it doesn't exist
$(shell mkdir -p $(BUILD_DIR))

# Build the target
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LIBS)

# Clean build files
clean:
	rm -f $(TARGET)
