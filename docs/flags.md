# Flags

This document lists all flags enabled (implicitly) in this project.
It does not list flags enabled by default in Clang 20.0.0 unless another flag
controls it.

## Set

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
`-Wdocumentation`                          | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdocumentation)
`-Wdouble-promotion`                       | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdouble-promotion)
`-Wdynamic-exception-spec`                 | C++           | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdynamic-exception-spec)
`-Wextra`                                  | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wextra)
`-Wextra-semi`                             | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wextra-semi)
`-Wextra-semi-stmt`                        | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wextra-semi-stmt)
`-Wfloat-equal`                            | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wfloat-equal)
`-Wformat-type-confusion`                  | C / C++       | [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wformat-type-confusion)
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

## Skipped

- All flags marked as "enabled by default"
- Unused features by this project:

**Flag**                     | **Reason**
---------------------------- | -----------------
`-Warc-repeated-use-of-weak` | Obj-C only
`-Watomic-implicit-seq-cst`  | C11 feature
`-Watomic-properties`        | C11 feature
`-Wcalled-once-parameter`    | Clang annotation
`-Wcompletion-handler`       | Swift only
`-Wconsumed`                 | Clang annotation
`-Wcstring-format-directive` | Obj-C only
`-Wctad-maybe-unsupported`   | C++17 feature
`-Wcuda-compat`              | CUDA only