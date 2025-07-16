# Technical

## Tools

**Tool**           | **Version**
------------------ | -----------
Make               | 4.4.0
LLVM               | 20.0.0
Visual Studio Code | 1.96.0

## Setup

### 1. Packages

#### Ubuntu

1. Run the following command(s) in the terminal:

```sh
# download apt packages
sudo apt update
sudo apt install --no-install-recommends llvm lld lldb clang clang-format clang-tidy clangd make python3-pip
```

#### Windows

1. Download and install MSYS2: [link](https://github.com/msys2/msys2-installer/releases)
2. Run the following command(s) within `MSYS2 CLANG64`:

```sh
# install aur packages
pacman -Syu
pacman -S mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-lldb mingw-w64-clang-x86_64-clang-tools-extra mingw-w64-clang-x86_64-make mingw-w64-clang-x86_64-python-pip
```

3. Run the following commands in Powershell with "Run as Administrator":

```ps1
# Add symbolic link to 'make'
cd C:\msys64\clang64\bin
New-Item -Force -ItemType SymbolicLink -Path "make" -Target "C:\msys64\clang64\bin\mingw32-make.exe"

# Add clang64 environment executables to PATH
[Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";C:\msys64\clang64\bin\", "Machine")
```

### 2. Visual Studio Code

1. Download and install VSCode: [link](https://code.visualstudio.com/download)
2. Install the workspace recommended extensions:
    - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
    - lldb-dap: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.lldb-dap)
3. VSCode > File Explorer > Clone Repository > https://github.com/merijnhendriks/vscodellvm
4. Open `VSCodeLLVM` folder in VSCode
5. VSCode > Terminal > Run Task... > Python: Install CompileDB

## Project: App

### Flags

#### Enabled

It does not list flags enabled by default in clang 20.0.0 or those controlled
by parent flags.

**Flag**                                   | **Languages** | **Link**
------------------------------------------ | ------------- | -----------------------------------------------------------------------------------------------------
`-std=c99`                                 | C             | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-std)
`-std=c++03`                               | C++           | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-std)
`-fno-common`                              | C / C++       | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-fcommon)
`-fdata-sections`                          | C / C++       | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-fdata-sections)
`-ffunction-sections`                      | C / C++       | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-ffunction-sections)
`-fno-exceptions`                          | C++           | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-fexceptions)
-`fno-rtti`                                | C++           | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-frtti)
`-fuse-ld=lld`                             | linker        | [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-fuse-ld)
`--as-needed`                              | linker        | [link](https://man.archlinux.org/man/extra/lld/ld.lld.1.en#as-needed)
`--gc-sections`                            | linker        | [link](https://man.archlinux.org/man/extra/lld/ld.lld.1.en#gc-sections)
`--no-undefined`                           | linker        | [link](https://man.archlinux.org/man/extra/lld/ld.lld.1.en#no-undefined)
`-Werror`                                  | C / C++       | [link](https://clang.llvm.org/docs/UsersManual.html#options-to-control-error-and-warning-messages)
`-Wabstract-vbase-init`                    | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wabstract-vbase-init)
`-Wall`                                    | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wall)
`-Walloca`                                 | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#walloca)
`-Wanon-enum-enum-conversion`              | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wanon-enum-enum-conversion)
`-Warray-bounds-pointer-arithmetic`        | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#warray-bounds-pointer-arithmetic)
`-Wasm-operand-widths`                     | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wasm-operand-widths)
`-Wassign-enum`                            | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wbad-function-cast)
`-Wbad-function-cast`                      | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wassign-enum)
`-Wbind-to-temporary-copy`                 | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wbind-to-temporary-copy)
`-Wc11-extensions`                         | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc11-extensions)
`-Wc23-compat`                             | C             | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc23-compat)
`-Wc23-extensions`                         | C             | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc23-extensions)
`-Wc++-compat`                             | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-compat)
`-Wc++11-extensions`                       | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-11-extensions)
`-Wc++14-extensions`                       | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-14-extensions)
`-Wc++17-extensions`                       | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-17-extensions)
`-Wc++20-extensions`                       | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-20-extensions)
`-Wc++23-extensions`                       | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-23-extensions)
`-Wc++26-extensions`                       | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-26-extensions)
`-Wc++98-compat-pedantic`                  | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-98-compat-pedantic)
`-Wcast-align`                             | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wcast-align)
`-Wcast-function-type`                     | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wcast-function-type)
`-Wcast-qual`                              | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wcast-qual)
`-Wcomma`                                  | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wcomma)
`-Wclass-varargs`                          | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wclass-varargs)
`-Wcompound-token-split`                   | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wcompound-token-split)
`-Wconditional-uninitialized`              | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wconditional-uninitialized)
`-Wcovered-switch-default`                 | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wcovered-switch-default)
`-Wdate-time`                              | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdate-time)
`-Wdeprecated`                             | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdeprecated)
`-Wdisabled-macro-expansion`               | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.htmlw#wdisabled-macro-expansion)
`-Wdouble-promotion`                       | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdouble-promotion)
`-Wdtor-name`                              | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.htmlw#wdtor-name)
`-Wduplicate-enum`                         | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wexit-time-destructors)
`-Wduplicate-method-arg`                   | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wduplicate-method-arg)
`-Wduplicate-method-match`                 | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wduplicate-method-match)
`-Wdynamic-exception-spec`                 | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdynamic-exception-spec)
`-Wexit-time-destructors`                  | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#id336)
`-Wexpansion-to-defined`                   | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wexpansion-to-defined)
`-Wextra`                                  | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wextra)
`-Wextra-semi`                             | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wextra-semi)
`-Wextra-semi-stmt`                        | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wextra-semi-stmt)
`-Wflexible-array-extensions`              | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wflexible-array-extensions)
`-Wfloat-equal`                            | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wfloat-equal)
`-Wformat-pedantic`                        | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wformat-pedantic)
`-Wformat-signedness`                      | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wformat-signedness)
`-Wformat-type-confusion`                  | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wformat-type-confusion)
`-Wfour-char-constants`                    | C/ C++        | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wfour-char-constants)
`-Wmissing-prototypes`                     | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wmissing-prototypes)
`-Wnewline-eof`                            | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wnewline-eof)
`-Wnon-gcc`                                | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wnon-gcc)
`-Wold-style-cast`                         | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wold-style-cast)
`-Wpacked`                                 | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wpacked)
`-Wpedantic`                               | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wpedantic)
`-Wpointer-arith`                          | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wpointer-arith)
`-Wshadow-all`                             | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wshadow-all)
`-Wshift-sign-overflow`                    | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wshift-sign-overflow)
`-Wstrict-prototypes`                      | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wstrict-prototypes)
`-Wswitch-enum`                            | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wswitch-enum)
`-Wtautological-compare`                   | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wtautological-compare)
`-Wtautological-constant-in-range-compare` | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wtautological-constant-in-range-compare)
`-Wthread-safety`                          | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wthread-safety)
`-Wundef`                                  | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wundef)
`-Wunreachable-code-aggressive`            | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-aggressive)
`-Wvariadic-macros`                        | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wvariadic-macros)
`-Wvla`                                    | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wvla)
`-Wzero-as-null-pointer-constant`          | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wzero-as-null-pointer-constant)
`-Wzero-length-array`                      | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wzero-length-array)

### Skipped

The following were not included:

**Flag**                        | **Reason**
------------------------------- | --------------------
`-Warc-repeated-use-of-weak`    | Obj-C only
`-Watomic-implicit-seq-cst`     | C11 feature
`-Watomic-properties`           | C11 feature
`-Wcalled-once-parameter`       | Clang annotation
`-Wcompletion-handler`          | Swift only
`-Wconsumed`                    | Clang annotation
`-Wcstring-format-directive`    | Obj-C only
`-Wctad-maybe-unsupported`      | C++17 feature
`-Wcuda-compat`                 | CUDA only
`-Wdeclaration-after-statement` | C89 only
`-Wdecls-in-multiple-modules`   | C++20 feature
`-Wdeprecated-implementations`  | Clang annotation
`-Wdocumentation`               | External annotation
`-Wdocumentation-pedantic`      | External annotation

## Frequently Asked Questions

> Q: Why are RTTI and exceptions disabled?

A: I want C++ to mostly behave as C with classes.

> Q: Why did you choose the specific language standards?

A:  C99 and C++03 seem to match the closest in terms of features.

> Q: Why is the project not hardened by default?

A: There is so much to configure for that and also quite platform dependent,
I can't keep up with it.

> Q: Why `llvm-mc` instead of `nasm`?

A: Simplicity, portability. `llvm-mc` is used internally for inline assembly
and it's already included with the llvm toolchain. `nasm` only supports x86
whereas `llvm-mc` also supports arm and risc-v platforms.
