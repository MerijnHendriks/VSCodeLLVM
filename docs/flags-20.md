# Flags

This document lists all flags enabled (implicitly) in this project.
It does not list flags enabled by default in Clang 20.0.0 unless another flag
controls it.

## Explict

### -fno-common

- Link: [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-fcommon)
- Cfg: C / C++

### -fdata-sections

- Link: [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-fdata-sections)
- Cfg: C / C++

### -ffunction-sections

- Link: [link](https://clang.llvm.org/docs/ClangCommandLineReference.html#cmdoption-clang-ffunction-sections)
- Cfg: C / C++

### -Werror

- Link: [link](https://clang.llvm.org/docs/UsersManual.html#options-to-control-error-and-warning-messages)
- Cfg: C / C++

### -WCL4

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wcl4)
- Cfg: C / C++
- Controls:
  - `-Wall`
  - `-Wextra`

### -Wanon-enum-enum-conversion

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wanon-enum-enum-conversion)
- Cfg: C / C++
- Controls:
  - `-Wdeprecated-anon-enum-enum-conversion`

> TODO: handle these flags

### -Wbinary-literal

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#binary-literal)
- Cfg: C / C++
- Controls:
  - `-Wc++14-binary-literal`
  - `-Wc++98-c++11-compat-binary-literal`

> TODO: handle these flags

### -Wbind-to-temporary-copy

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wbind-to-temporary-copy)
- Cfg: C / C++
- Controls:
  - `-Wc++98-compat-bind-to-temporary-copy`

> TODO: handle these flags

### -Wc++-compat

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc-compat)
- Cfg: C++
- Controls:
  - `-Wc++-hidden-decl`
  - `-Wc++-keyword`
  - `-Wc++-unterminated-string-initialization`
  - `-Wdefault-const-init`
  - `-Wduplicate-decl-specifier`
  - `-Wimplicit-int-enum-cast`
  - `-Wimplicit-void-ptr-cast`
  - `-Wjump-misses-init`
  - `-Wtentative-definition-compat`

> TODO: handle these flags

### -Wc++11-compat

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wc++11-compat)
- Cfg: C++
- Controls:
  - `-Wc++11-compat-deprecated-writable-strings`
  - `-Wc++11-compat-reserved-user-defined-literal`
  - `-Wc++11-narrowing`
  - `-Wpre-c++14-compat`
  - `-Wpre-c++17-compat`
  - `-Wpre-c++20-compat`
  - `-Wpre-c++23-compat`
  - `-Wpre-c++26-compat`

> TODO: handle these flags

### -Wpedantic

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wpedantic)
- Cfg: C / C++
- Controls:
  - `-Wauto-decl-extensions`
  - `-Wbit-int-extension`
  - `-Wc++11-extra-semi`
  - `-Wc++11-long-long`
  - `-Wc++14-attribute-extensions`
  - `-Wc++14-binary-literal`
  - `-Wc++17-attribute-extensions`
  - `-Wc++20-attribute-extensions`
  - `-Wc++20-designator`
  - `-Wc11-extensions`
  - `-Wc2y-extensions`
  - `-Wcomplex-component-init`
  - `-Wdelimited-escape-sequence-extension`
  - `-Wdollar-in-identifier-extension`
  - `-Wembedded-directive`
  - `-Wempty-translation-unit`
  - `-Wflexible-array-extensions`
  - `-Wfuture-attribute-extensions`
  - `-Wgnu-anonymous-struct`
  - `-Wgnu-auto-type`
  - `-Wgnu-case-range`
  - `-Wgnu-complex-integer`
  - `-Wgnu-compound-literal-initializer`
  - `-Wgnu-conditional-omitted-operand`
  - `-Wgnu-empty-struct`
  - `-Wgnu-flexible-array-initializer`
  - `-Wgnu-flexible-array-union-member`
  - `-Wgnu-imaginary-constant`
  - `-Wgnu-include-next`
  - `-Wgnu-label-as-value`
  - `-Wgnu-line-marker`
  - `-Wgnu-null-pointer-arithmetic`
  - `-Wgnu-pointer-arith`
  - `-Wgnu-redeclared-enum`
  - `-Wgnu-statement-expression`
  - `-Wgnu-union-cast`
  - `-Wgnu-zero-line-directive`
  - `-Wimport-preprocessor-directive-pedantic`
  - `-Winvalid-utf8`
  - `-Wkeyword-macro`
  - `-Wlanguage-extension-token`
  - `-Wlong-long`
  - `-Wmicrosoft-charize`
  - `-Wmicrosoft-comment-paste`
  - `-Wmicrosoft-cpp-macro`
  - `-Wmicrosoft-end-of-file`
  - `-Wmicrosoft-enum-value`
  - `-Wmicrosoft-fixed-enum`
  - `-Wmicrosoft-flexible-array`
  - `-Wmicrosoft-redeclare-static`
  - `-Wnested-anon-types`
  - `-Wnullability-extension`
  - `-Woctal-prefix-extension`
  - `-Woverlength-strings`
  - `-Wretained-language-linkage`
  - `-Wtentative-definition-incomplete-type`
  - `-Wundefined-internal-type`
  - `-Wzero-length-array`

> TODO: handle these flags

### -Wdeprecated

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wdeprecated)
- Cfg: C / C++
- Controls:
  - `-Wdeprecated-anon-enum-enum-conversion`
  - `-Wdeprecated-array-compare`
  - `-Wdeprecated-attributes`
  - `-Wdeprecated-builtins`
  - `-Wdeprecated-comma-subscript`
  - `-Wdeprecated-copy`
  - `-Wdeprecated-copy-with-dtor`
  - `-Wdeprecated-declarations`
  - `-Wdeprecated-dynamic-exception-spec`
  - `-Wdeprecated-enum-compare`
  - `-Wdeprecated-enum-compare-conditional`
  - `-Wdeprecated-enum-enum-conversion`
  - `-Wdeprecated-enum-float-conversion`
  - `-Wdeprecated-increment-bool`
  - `-Wdeprecated-literal-operator`
  - `-Wdeprecated-missing-comma-variadic-parameter`
  - `-Wdeprecated-octal-literals`
  - `-Wdeprecated-ofast`
  - `-Wdeprecated-pragma`
  - `-Wdeprecated-redundant-constexpr-static-def`
  - `-Wdeprecated-register`
  - `-Wdeprecated-this-capture`
  - `-Wdeprecated-type`
  - `-Wdeprecated-volatile`
  - `-Wdeprecated-writable-strings`

> TODO: handle these flags

### -Wnon-gcc

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wnon-gcc)
- Cfg: C / C++
- Controls:
  - `-Wconversion`
  - `-Wliteral-range`
  - `-Wsign-compare`

> TODO: handle these flags

## Implicit

### -Wall

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wall)
- Cfg: C / C++
- Controls:
  - `-Wmisleading-indentation`
  - `-Wmost`
  - `-Wpacked-non-pod`
  - `-Wparentheses`
  - `-Wperf-constraint-implies-noexcept`
  - `-Wswitch`
  - `-Wswitch-bool`
  - `-Wvla-cxx-extension`

### -Wmisleading-indentation

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wmisleading-indentation)
- Cfg: C / C++

### -Wmost

- [Link](https://clang.llvm.org/docs/DiagnosticsReference.html#wmost)
- Cfg: C / C++
- Controls:
  - `-Warray-parameter`
  - `-Wbool-operation`
  - `-Wcast-of-sel-type`
  - `-Wchar-subscripts`
  - `-Wcomment`
  - `-Wdelete-non-virtual-dtor`
  - `-Wextern-c-compat`
  - `-Wfor-loop-analysis`
  - `-Wformat`
  - `-Wframe-address`
  - `-Wimplicit`
  - `-Winfinite-recursion`
  - `-Wint-in-bool-context`
  - `-Wmismatched-tags`
  - `-Wmissing-braces`
  - `-Wmove`
  - `-Wmultichar`
  - `-Wobjc-designated-initializers`
  - `-Wobjc-flexible-array`
  - `-Wobjc-missing-super-calls`
  - `-Woverloaded-virtual`
  - `-Wprivate-extern`
  - `-Wrange-loop-construct`
  - `-Wreorder`
  - `-Wreturn-type`
  - `-Wself-assign`
  - `-Wself-move`
  - `-Wsizeof-array-argument`
  - `-Wsizeof-array-decay`
  - `-Wstring-plus-int`
  - `-Wtautological-compare`
  - `-Wtrigraphs`
  - `-Wuninitialized`
  - `-Wunknown-pragmas`
  - `-Wunused`
  - `-Wuser-defined-warnings`
  - `-Wvolatile-register-var`

> TODO: handle these flags

### -Wpacked-non-pod

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wpacked-non-pod)
- Cfg: C / C++

### -Wparentheses

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wparentheses)
- Cfg: C / C++
- Controls:
  - `-Wbitwise-conditional-parentheses`
  - `-Wbitwise-op-parentheses`
  - `-Wdangling-else`
  - `-Wlogical-not-parentheses`
  - `-Wlogical-op-parentheses`
  - `-Woverloaded-shift-op-parentheses`
  - `-Wparentheses-equality`
  - `-Wshift-op-parentheses`

> TODO: handle these flags

### -Wperf-constraint-implies-noexcept

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wperf-constraint-implies-noexcept)
- Cfg: C / C++

### -Wswitch

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wswitch)
- Cfg: C / C++

### -Wswitch-bool

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wswitch-bool)
- Cfg: C / C++

### -Wvla-cxx-extension

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wvla-cxx-extension)
- Cfg: C / C++

### -Wvla-extension-static-assert

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wvla-extension-static-assert)
- Cfg: C / C++

### -Wextra

- Link: [link](https://clang.llvm.org/docs/DiagnosticsReference.html#wextra)
- Cfg: C / C++
- Controls:
  - `-Wcast-function-type-mismatch`
  - `-Wdeprecated-copy`
  - `-Wempty-init-stmt`
  - `-Wfuse-ld-path`
  - `-Wignored-qualifiers`
  - `-Winitializer-overrides`
  - `-Wmissing-field-initializers`
  - `-Wmissing-method-return-type`
  - `-Wnull-pointer-arithmetic`
  - `-Wnull-pointer-subtraction`
  - `-Wsemicolon-before-method-body`
  - `-Wsign-compare`
  - `-Wstring-concatenation`
  - `-Wunnecessary-virtual-specifier`
  - `-Wunterminated-string-initialization`
  - `-Wunused-but-set-parameter`
  - `-Wunused-parameter`

> TODO: handle these flags