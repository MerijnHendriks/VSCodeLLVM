# -----------------------------------------------------------------------------
# Configurable options
#------------------------------------------------------------------------------

PROJECT_NAME		:= app
SOURCE_FOLDER		:= src
INCLUDE_FOLDERS		:= include
LIBRARY_FOLDERS		:= 
LIBRARIES			:= m
BASE_FLAGS			:= -fno-omit-frame-pointer -fno-common -fdata-sections -ffunction-sections -Werror -Wall -Wextra -Wpedantic -Wdeprecated -Wconversion -Wshadow-all -Wunreachable-code-aggressive -Wformat=2 -Wvla -Warray-bounds-pointer-arithmetic -Wassign-enum -Wbad-function-cast -Wcast-align -Wcast-qual -Wcomma -Wconditional-uninitialized -Wdouble-promotion -Wfloat-equal -Wformat-type-confusion -Wmissing-prototypes -Wnewline-eof -Wpacked -Wpointer-arith -Wshift-sign-overflow -Wstrict-prototypes -Wswitch-enum -Wtautological-constant-in-range-compare -Wthread-safety -Wundef -Wvariadic-macros -Wwritable-strings
CFLAGS				:= $(BASE_FLAGS) -std=c99
CXXFLAGS			:= $(BASE_FLAGS) -std=c++03 -fno-exceptions -fno-rtti -Wnon-virtual-dtor -Wold-style-cast
LDFLAGS				:= -fuse-ld=lld -Wl,--gc-sections -Wl,--as-needed
ASFLAGS             := -f win64
CC					:= clang
CXX					:= clang++
AS                  := nasm

debug: CFLAGS		+= -DDEBUG -g -Wno-unused
debug: CXXFLAGS		+= -DDEBUG -g -Wno-unused

release: CFLAGS		+= -DNDEBUG -Os
release: CXXFLAGS	+= -DNDEBUG -Os

# -----------------------------------------------------------------------------
# DO NOT CHANGE ANYTHING BELOW THIS
#------------------------------------------------------------------------------

BIN_FOLDER		:= bin
OBJ_FOLDER		:= obj
SOURCES			:= $(shell find $(SOURCE_FOLDER) -name '*.s' -or -name '*.c' -or -name '*.cpp')
OBJECTS			:= $(SOURCES:%=$(OBJ_FOLDER)/%.o)
INCLUDE_FLAGS	:= $(addprefix -I,$(INCLUDE_FOLDERS))
LDLIBS			:= $(addprefix -L,$(LIBRARY_FOLDERS)) $(addprefix -l,$(LIBRARIES))

$(BIN_FOLDER)/$(PROJECT_NAME): $(OBJECTS)
	mkdir -p $(dir $@)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS) $(LDLIBS)

$(OBJ_FOLDER)/%.s.o: %.s
	mkdir -p $(dir $@)
	$(AS) $(ASFLAGS) $< -o $@

$(OBJ_FOLDER)/%.c.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(INCLUDE_FLAGS) $(CFLAGS) -c $< -o $@

$(OBJ_FOLDER)/%.cpp.o: %.cpp
	mkdir -p $(dir $@)
	$(CXX) $(INCLUDE_FLAGS) $(CXXFLAGS) -c $< -o $@

# targets
debug: $(BIN_FOLDER)/$(PROJECT_NAME)

release: $(BIN_FOLDER)/$(PROJECT_NAME)

clean:
	rm -rf $(OBJ_FOLDER)
	rm -rf $(BIN_FOLDER)
