BIN			:= ./game/bin/OverPower2D.exe

CC			:= g++
GENERAL		:= -m64 -std=c++17
OPT			:= -O0
DEBUG		:= -g -Wall -Wextra

OBJDIR		:= ./game/bin/obj
SRCDIR		:= ./src
INCDIRS		:= ./include ./dependencies/raylib/include ./dependencies/entt/include
LIBDIRS		:= ./dependencies/raylib/lib
LIBS		:= -lraylib -lopengl32 -lgdi32 -lwinmm

CFLAGS		:= $(GENERAL) $(OPT) $(DEBUG) $(foreach DIR,$(INCDIRS),-I$(DIR))
LFLAGS		:= $(foreach DIR,$(LIBDIRS),-L$(DIR)) $(LIBS)

SRCS		:= $(wildcard $(SRCDIR)/*.cpp $(SRCDIR)/*/*.cpp $(SRCDIR)/*/*/*.cpp $(SRCDIR)/*/*/*/*.cpp $(SRCDIR)/*/*/*/*/*.cpp)
OBJS		:= $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SRCS))

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) -o $@ $^ $(LFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm $(BIN) $(OBJS)
