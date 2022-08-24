# -----------------------------------------------------------------------------
# Editable options
#------------------------------------------------------------------------------

PROJECT_NAME    := app
INCLUDE_FOLDERS := include
FLAGS_SHARED    := -fno-omit-frame-pointer -fno-common -fdata-sections -ffunction-sections -Werror -Wall -Wextra -Wpedantic -Wdeprecated -Wconversion -Wshadow-all -Wunreachable-code-aggressive -Wformat=2 -Wvla -Warray-bounds-pointer-arithmetic -Wassign-enum -Wbad-function-cast -Wcast-align -Wcast-qual -Wcomma -Wconditional-uninitialized -Wdouble-promotion -Wfloat-equal -Wformat-type-confusion -Wmissing-prototypes -Wnewline-eof -Wpacked -Wpointer-arith -Wshift-sign-overflow -Wstrict-prototypes -Wswitch-enum -Wtautological-constant-in-range-compare -Wthread-safety -Wundef -Wvariadic-macros -Wwritable-strings
FLAGS_DEBUG     := -DDEBUG -g -Wno-unused
FLAGS_RELEASE   := -DNDEBUG -Os
FLAGS_C         := -std=c99
FLAGS_CXX       := -std=c++03 -Wnon-virtual-dtor -Wold-style-cast -fno-exceptions -fno-rtti
FLAGS_LD        := -Wl,--gc-sections -Wl,--as-needed
TOOL_C          := clang
TOOL_CXX        := clang++
TOOL_LD         := ldd

# -----------------------------------------------------------------------------
# DO NOT CHANGE ANYTHING BELOW THIS
#------------------------------------------------------------------------------

# folders
SRC_FOLDER := src
OBJ_FOLDER := obj
BIN_FOLDER := bin

# tools
CC := $(TOOL_C)
CXX := $(TOOL_CXX)
LD := $(TOOL_LD)

# configurations
debug: $(BIN_FOLDER)/$(PROJECT_NAME)
debug: CFLAGS   := $(FLAGS_C) $(FLAGS_SHARED) $(FLAGS_DEBUG)
debug: CXXFLAGS := $(FLAGS_CXX) $(FLAGS_SHARED) $(FLAGS_DEBUG)
release: $(BIN_FOLDER)/$(PROJECT_NAME)
release: CFLAGS   := $(FLAGS_C) $(FLAGS_SHARED) $(FLAGS_RELEASE)
release: CXXFLAGS := $(FLAGS_CXX) $(FLAGS_SHARED) $(FLAGS_RELEASE)
LDFLAGS := $(FLAGS_LD)

# build stages
SOURCES := $(shell find $(SRC_FOLDER) -name '*.cpp' -or -name '*.c' -or -name '*.s')
OBJECTS := $(SOURCES:%=$(OBJ_FOLDER)/%.o)
INCLUDE_FLAGS := $(addprefix -I,$(INCLUDE_FOLDERS))

$(BIN_FOLDER)/$(PROJECT_NAME): $(OBJECTS)
	mkdir -p $(dir $@)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

$(OBJ_FOLDER)/%.c.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(INCLUDE_FLAGS) $(CFLAGS) -c $< -o $@

$(OBJ_FOLDER)/%.cpp.o: %.cpp
	mkdir -p $(dir $@)
	$(CXX) $(INCLUDE_FLAGS) $(CXXFLAGS) -c $< -o $@

.PHONY: clean
clean:
	@$(rm) -f $(OBJ_FOLDER)
	@$(rm) -f $(BIN_FOLDER)
