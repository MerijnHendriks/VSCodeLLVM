# -----------------------------------------------------------------------------
# Configurable options
# Note: makefile cannot handle 4-spaces as tabs
#------------------------------------------------------------------------------

# global
PROJECT_NAME		:= app

# folders
SOURCES_FOLDER		:= src
INCLUDE_FOLDERS		:=
LIBRARY_FOLDERS		:=

# tools
CC					:= clang
CXX					:= clang++
AS					:= llvm-mc

# flags
LIBRARIES			:= m
BASE_FLAGS			:= -fno-common -fdata-sections -ffunction-sections -Werror -Wall -Walloca -Wanon-enum-enum-conversion -Warray-bounds-pointer-arithmetic -Wasm-operand-widths -Wassign-enum -Wbad-function-cast -Wcast-align -Wcast-function-type -Wcast-qual -Wcomma -Wcompound-token-split -Wconditional-uninitialized -Wcovered-switch-default -Wdate-time -Wdeprecated -Wdocumentation -Wdouble-promotion -Wextra -Wextra-semi -Wextra-semi-stmt -Wfloat-equal -Wformat-type-confusion -Wmissing-prototypes -Wnewline-eof -Wnon-gcc -Wpacked -Wpedantic -Wpointer-arith -Wshadow-all -Wshift-sign-overflow -Wswitch-enum -Wtautological-compare -Wtautological-constant-in-range-compare -Wthread-safety -Wundef -Wunreachable-code-aggressive -Wvariadic-macros -Wvla -Wzero-as-null-pointer-constant -Wzero-length-array
CFLAGS				:= $(BASE_FLAGS) -std=c99 -Wc11-extensions -Wc23-compat -Wc23-extensions
CXXFLAGS			:= $(BASE_FLAGS) -std=c++03 -fno-exceptions -fno-rtti -Wabstract-vbase-init -Wbind-to-temporary-copy -Wc++-compat -Wc++11-extensions -Wc++14-extensions -Wc++17-extensions -Wc++20-extensions -Wc++20-extensions -Wc++23-extensions -Wc++26-extensions -Wc++98-compat-pedantic -Wclass-varargs -Wdynamic-exception-spec -Wnon-virtual-dtor -Wold-style-cast
LDFLAGS				:= -fuse-ld=lld -Wl,--as-needed -Wl,--gc-sections -Wl,--no-undefined
ASFLAGS				:= -filetype=obj

# debug
debug: CFLAGS		+= -DDEBUG -g -fstack-usage -Wno-unused
debug: CXXFLAGS		+= -DDEBUG -g -fstack-usage -Wno-unused
debug: ASFLAGS      += -g --preserve-comments
debug: LDFLAGS		+= -fstack-usage

# release
release: CFLAGS		+= -DNDEBUG -Os -flto=full
release: CXXFLAGS	+= -DNDEBUG -Os -flto=full
release: ASFLAGS    +=
release: LDFLAGS	+= -flto=full

# -----------------------------------------------------------------------------
# DO NOT CHANGE ANYTHING BELOW THIS
#------------------------------------------------------------------------------

# OS-dependent
UNAME_S := $(shell uname -s)
UNAME_P := $(shell uname -p)

ifeq ($(OS),Windows_NT)
	ifeq ($(PROCESSOR_ARCHITECTURE),AMD64)
    	INCLUDE_FOLDERS += C:/msys64/clang64/include
     	ASFLAGS += --arch=x86-64
    endif
    ifeq ($(PROCESSOR_ARCHITECTURE),x86)
    	INCLUDE_FOLDERS += C:/msys64/clang32/include
     	ASFLAGS += --arch=x86
      endif
endif

ifeq ($(UNAME_S),Linux)
	ifeq ($(UNAME_P),x86_64)
	   ASFLAGS += --arch=x86-64
	endif
	ifneq ($(filter %86,$(UNAME_P)),)
	   ASFLAGS += --arch=x86
	endif
endif

ifeq ($(UNAME_S),Darwin)
	ifeq ($(UNAME_P),x86_64)
	   ASFLAGS += --arch=x86-64
	endif
	ifneq ($(filter %86,$(UNAME_P)),)
	   ASFLAGS += --arch=x86
	endif
endif

# get objects to generate
BIN_FOLDER		:= bin
OBJ_FOLDER		:= obj
SOURCES			:= $(shell find $(SOURCES_FOLDER) -name '*.s' -or -name '*.c' -or -name '*.cpp')
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
