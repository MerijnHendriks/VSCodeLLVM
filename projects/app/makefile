# -----------------------------------------------------------------------------
# Configurable options
#------------------------------------------------------------------------------

# global
PROJECT_NAME		:= app

# folders
SOURCE_FOLDER		:= src
INCLUDE_FOLDERS		:= 
LIBRARY_FOLDERS		:= 

# tools
CC					:= clang
CXX					:= clang++
AS                  := nasm

# flags
LIBRARIES			:= m
BASE_FLAGS			:= -fno-omit-frame-pointer -fno-common -fdata-sections -ffunction-sections -Werror -Wall -Wextra -Wpedantic -Wdeprecated -Wconversion -Wshadow-all -Wunreachable-code-aggressive -Wformat=2 -Wvla -Warray-bounds-pointer-arithmetic -Wassign-enum -Wbad-function-cast -Wcast-align -Wcast-qual -Wcomma -Wconditional-uninitialized -Wdouble-promotion -Wfloat-equal -Wformat-type-confusion -Wmissing-prototypes -Wnewline-eof -Wpacked -Wpointer-arith -Wshift-sign-overflow -Wstrict-prototypes -Wswitch-enum -Wtautological-constant-in-range-compare -Wthread-safety -Wundef -Wvariadic-macros -Wwritable-strings
CFLAGS				:= $(BASE_FLAGS) -std=c99
CXXFLAGS			:= $(BASE_FLAGS) -std=c++03 -fno-exceptions -fno-rtti -Wnon-virtual-dtor -Wold-style-cast
LDFLAGS				:= -fuse-ld=lld -Wl,--gc-sections -Wl,--as-needed -Wl,--no-undefined 
ASFLAGS             := 

# debug
debug: CFLAGS		+= -DDEBUG -g -Wno-unused
debug: CXXFLAGS		+= -DDEBUG -g -Wno-unused

# release
release: CFLAGS		+= -DNDEBUG -Os
release: CXXFLAGS	+= -DNDEBUG -Os

# -----------------------------------------------------------------------------
# DO NOT CHANGE ANYTHING BELOW THIS
#------------------------------------------------------------------------------

# OS-dependent
UNAME_S := $(shell uname -s)
UNAME_P := $(shell uname -p)

ifeq ($(OS),Windows_NT)
	ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
		INCLUDE_FOLDERS += C:/msys64/clang64/include
		ASFLAGS += -f win64
	endif
	ifeq ($(PROCESSOR_ARCHITECTURE),x86)
		INCLUDE_FOLDERS += C:/msys64/clang32/include
		ASFLAGS += -f win32
	endif
endif

ifeq ($(UNAME_S),Linux)
	ifeq ($(UNAME_P),x86_64)
			ASFLAGS += -f elf32
		endif
		ifneq ($(filter %86,$(UNAME_P)),)
			ASFLAGS += -f elf64
	endif
endif

ifeq ($(UNAME_S),Darwin)
	ifeq ($(UNAME_P),x86_64)
			ASFLAGS += -f macho32
		endif
		ifneq ($(filter %86,$(UNAME_P)),)
			ASFLAGS += -f macho64
	endif
endif

# get objects to generate
BIN_FOLDER		:= bin
OBJ_FOLDER		:= obj
SOURCES			:= $(shell find $(SOURCE_FOLDER) -name '*.s' -or -name '*.c' -or -name '*.cpp')
OBJECTS			:= $(SOURCES:%=$(OBJ_FOLDER)/%.o)

# add object dependencies
DEPENDENCIES	:= $(OBJECTS:.o=.d)
CFLAGS			+= -MMD -MP
CXXFLAGS		+= -MMD -MP

# add headers
CFLAGS			+= $(addprefix -I,$(INCLUDE_FOLDERS))
CXXFLAGS		+= $(addprefix -I,$(INCLUDE_FOLDERS))

# add libraries
LDFLAGS			+= $(addprefix -L,$(LIBRARY_FOLDERS)) $(addprefix -l,$(LIBRARIES))

# *.s > *.o
$(OBJ_FOLDER)/%.s.o: %.s
	mkdir -p $(dir $@)
	$(AS) $(ASFLAGS) $< -o $@

# *.c > *.o 
$(OBJ_FOLDER)/%.c.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

# *.cpp > *.o
$(OBJ_FOLDER)/%.cpp.o: %.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# *.o > binary
$(BIN_FOLDER)/$(PROJECT_NAME): $(OBJECTS)
	mkdir -p $(dir $@)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

# targets
debug: $(BIN_FOLDER)/$(PROJECT_NAME)

release: $(BIN_FOLDER)/$(PROJECT_NAME)

clean:
	rm -rf $(OBJ_FOLDER)
	rm -rf $(BIN_FOLDER)
	rm -rf compile_commands.json

analyze: SOURCES := $(shell find $(SOURCE_FOLDER) -name '*.c' -or -name '*.cpp')
analyze:
	$(MAKE) -Bnwk debug | compiledb -o- > compile_commands.json
	@for src in $(SOURCES) ; do \
		echo "Analyzing $$src..." ; \
		clang-format -i "$$src" ; \
		clang-tidy -p . "$$src" ; \
	done
