BIN		:= ./bin/OverPower2D.exe

CC		:= g++
GENERAL		:= -m64 -std=c++17
OPT		:= -O0
DEBUG		:= -g -Wall -Wextra

OBJDIR		:= ./obj
SRCDIR		:= ../src
INCDIRS		:= ../include ../dependencies/raylib/include/
LIBDIRS		:= ../dependencies/raylib/lib/
LIBS		:= -lraylib -lopengl32 -lgdi32 -lwinmm

SRCS		:= $(wildcard $(SRCDIR)/*.cpp $(SRCDIR)/*/*.cpp $(SRCDIR)/*/*/*.cpp $(SRCDIR)/*/*/*/*.cpp $(SRCDIR)/*/*/*/*/*.cpp)
OBJS		:= $(SRCS:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

CFLAGS		:= $(GENERAL) $(OPT) $(DEBUG) $(foreach DIR,$(INCDIRS),-I$(DIR))
LFLAGS		:= $(foreach DIR,$(LIBDIRS),-L$(DIR)) $(LIBS)

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	DEL $(BIN) $(OBJS)