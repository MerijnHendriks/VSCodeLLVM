# -----------------------------------------------------------------------------
# Configurable options
#------------------------------------------------------------------------------

# global
PROJECT_NAME         := app
INCLUDE_FOLDERS      := include
LIBRARIES            := m
TOOL_C               := clang
TOOL_CXX             := clang++
TOOL_LD              := ldd
FLAGS_BASE_SHARED    := -fno-omit-frame-pointer -fno-common -fdata-sections -ffunction-sections -Werror -Wall -Wextra -Wpedantic -Wdeprecated -Wconversion -Wshadow-all -Wunreachable-code-aggressive -Wformat=2 -Wvla -Warray-bounds-pointer-arithmetic -Wassign-enum -Wbad-function-cast -Wcast-align -Wcast-qual -Wcomma -Wconditional-uninitialized -Wdouble-promotion -Wfloat-equal -Wformat-type-confusion -Wmissing-prototypes -Wnewline-eof -Wpacked -Wpointer-arith -Wshift-sign-overflow -Wstrict-prototypes -Wswitch-enum -Wtautological-constant-in-range-compare -Wthread-safety -Wundef -Wvariadic-macros -Wwritable-strings
FLAGS_BASE_C         := $(FLAGS_BASE_SHARED) -std=c99
FLAGS_BASE_CXX       := $(FLAGS_BASE_SHARED) -std=c++03 -Wnon-virtual-dtor -Wold-style-cast -fno-exceptions -fno-rtti
FLAGS_BASE_LD        := -Wl,--gc-sections -Wl,--as-needed

# debug
FLAGS_DEBUG_SHARED   := -DDEBUG -g -Wno-unused
FLAGS_DEBUG_C        := $(FLAGS_DEBUG_SHARED)
FLAGS_DEBUG_CXX      := $(FLAGS_DEBUG_SHARED)

# release
FLAGS_RELEASE_SHARED := -DNDEBUG -Os
FLAGS_RELEASE_C      := $(FLAGS_RELEASE_SHARED)
FLAGS_RELEASE_CXX    := $(FLAGS_RELEASE_SHARED)

# -----------------------------------------------------------------------------
# DO NOT CHANGE ANYTHING BELOW THIS
#------------------------------------------------------------------------------

# tools
CC                := $(TOOL_C)
CXX               := $(TOOL_CXX)
LD                := $(TOOL_LD)

# folders
SRC_FOLDER        := src
OBJ_FOLDER        := obj
BIN_FOLDER        := bin

# configurations
debug: $(BIN_FOLDER)/$(PROJECT_NAME)
debug: CFLAGS     := $(FLAGS_BASE_C) $(FLAGS_DEBUG_C)
debug: CXXFLAGS   := $(FLAGS_BASE_CXX) $(FLAGS_DEBUG_CXX)

release: $(BIN_FOLDER)/$(PROJECT_NAME)
release: CFLAGS   := $(FLAGS_BASE_C) $(FLAGS_RELEASE_C)
release: CXXFLAGS := $(FLAGS_BASE_CXX) $(FLAGS_RELEASE_CXX)

# build stages
SOURCES           := $(shell find $(SRC_FOLDER) -name '*.cpp' -or -name '*.c' -or -name '*.s')
OBJECTS           := $(SOURCES:%=$(OBJ_FOLDER)/%.o)
INCLUDE_FLAGS     := $(addprefix -I,$(INCLUDE_FOLDERS))
LIBRARY_FLAGS     := $(addprefix -l,$(LIBRARIES))
LDFLAGS           := $(FLAGS_BASE_LD) $(LIBRARY_FLAGS)

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
	rm -rf $(OBJ_FOLDER)
	rm -rf $(BIN_FOLDER)
