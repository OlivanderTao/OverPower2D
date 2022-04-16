BIN			:= ./game/bin/OverPower2D.exe

CC			:= g++
GENERAL		:= -m64 -std=c++17
OPT			:= -O0
DEBUG		:= -g -Wall -Wextra

OBJDIR		:= ./game/bin/obj
SRCDIR		:= ./src
INCDIRS		:= ./include ./dependencies/raylib/include ./dependencies/entt/include
LIBDIRS		:= ./dependencies/raylib/lib
LIBS		:= -lopengl32 -lgdi32 -lwinmm -lraylib

CFLAGS		:= $(GENERAL) $(OPT) $(DEBUG) $(foreach DIR,$(INCDIRS),-I$(DIR))
LFLAGS		:= $(foreach DIR,$(LIBDIRS),-L$(DIR)) $(LIBS)

SRCS		:= $(wildcard $(SRCDIR)/*.cpp $(SRCDIR)/*/*.cpp $(SRCDIR)/*/*/*.cpp $(SRCDIR)/*/*/*/*.cpp $(SRCDIR)/*/*/*/*/*.cpp)
OBJS		:= $(SRCS:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $(LFLAGS) -o $@ $^

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm $(BIN) $(OBJS)



rebuild:
	$(CC) $(SRCS) -o $(BIN) $(CFLAGS) $(LFLAGS)
