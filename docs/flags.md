# Flags

This document lists all flags enabled (implicitly) in this project.
It does not list flags enabled by default in Clang 14.0.3 unless another flag
controls it.

## Explict

### -Werror

- Cfg: Default
- Use: All warnings are treated as errors

### -Wall

- Cfg: Default
- Use: Includes basic useful warning

Controls:

- `-Wmisleading-indentation`
- `-Wmost`
- `-Wparentheses`
- `-Wswitch`
- `-Wswitch-bool`

### -Wno-unused

- Cfg: Default
- Use: Disable warnings about unused functions/variables/labels, etc.

### -Wextra

- Cfg: Default
- Use: Includes additional basic useful warning

Controls:

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
- `-Wunused-but-set-parameter`
- `-Wunused-parameter`

### -Wpedantic

- Cfg: Default
- Use: Testing standard conformance

Controls:

- `-Wbit-int-extension`
- `-Wc++11-extra-semi`
- `-Wc++11-long-long`
- `-Wc++14-attribute-extensions`
- `-Wc++14-binary-literal`
- `-Wc++17-attribute-extensions`
- `-Wc++20-attribute-extensions`
- `-Wc++20-designator`
- `-Wc11-extensions`
- `-Wcomplex-component-init`
- `-Wdelimited-escape-sequence-extension`
- `-Wdollar-in-identifier-extension`
- `-Wembedded-directive`
- `-Wempty-translation-unit`
- `-Wfixed-enum-extension`
- `-Wflexible-array-extensions`
- `-Wfuture-attribute-extensions`
- `-Wgnu-anonymous-struct`
- `-Wgnu-auto-type`
- `-Wgnu-binary-literal`
- `-Wgnu-case-range`
- `-Wgnu-complex-integer`
- `-Wgnu-compound-literal-initializer`
- `-Wgnu-conditional-omitted-operand`
- `-Wgnu-empty-initializer`
- `-Wgnu-empty-struct`
- `-Wgnu-flexible-array-initializer`
- `-Wgnu-flexible-array-union-member`
- `-Wgnu-imaginary-constant`
- `-Wgnu-include-next`
- `-Wgnu-label-as-value`
- `-Wgnu-redeclared-enum`
- `-Wgnu-statement-expression`
- `-Wgnu-union-cast`
- `-Wgnu-zero-line-directive`
- `-Wgnu-zero-variadic-macro-arguments`
- `-Wimport-preprocessor-directive-pedantic`
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
- `-Woverlength-strings`
- `-Wretained-language-linkage`
- `-Wundefined-internal-type`
- `-Wvla-extension`
- `-Wzero-length-array`

### -Wdeprecated

Cfg: Default
Use: Detecting deprecated code

Controls:

- `-Wdeprecated-anon-enum-enum-conversion`
- `-Wdeprecated-array-compare`
- `-Wdeprecated-attributes`
- `-Wdeprecated-comma-subscript`
- `-Wdeprecated-copy`
- `-Wdeprecated-copy-with-dtor`
- `-Wdeprecated-declarations`
- `-Wdeprecated-dynamic-exception-spec`
- `-Wdeprecated-enum-compare`
- `-Wdeprecated-enum-compare-conditional`
- `-Wdeprecated-enum-compare-conversion`
- `-Wdeprecated-enum-float-conversion`
- `-Wdeprecated-increment-bool`
- `-Wdeprecated-pragma`
- `-Wdeprecated-register`
- `-Wdeprecated-this-capture`
- `-Wdeprecated-type`
- `-Wdeprecated-volatile`
- `-Wdeprecated-writable-strings`

### -Wconversion

Cfg: Default
Use: Detecting conversion errors

Controls:

- `-Wbitfield-enum-conversion`
- `-Wbool-conversion`
- `-Wconstant-conversion`
- `-Wenum-conversion`
- `-Wfloat-conversion`
- `-Wimplicit-float-conversion`
- `-Wimplicit-int-conversion`
- `-Wint-conversion`
- `-Wliteral-conversion`
- `-Wnon-literal-null-conversion`
- `-Wnull-conversion`
- `-Wobjc-literal-conversion`
- `-Wshorten-64-to-32`
- `-Wsign-conversion`
- `-Wstring-conversion`

### -Wshadow-all

Cfg: Default
Use: Detecting shadowed code

Controls:

- `-Wshadow`
- `-Wshadow-field`
- `-Wshadow-field-in-constructor`
- `-Wshadow-uncaptured-local`

### -Wunreachable-code-aggressive

Cfg: Default
Use: Detecting unreachable code

Controls:

- `-Wunreachable-code`
- `-Wunreachable-code-break`
- `-Wunreachable-code-return`

### -Wformat=2

Cfg: Default
Use: Stricter string formatting

Controls:

- `-Wformat-nonliteral`
- `-Wformat-security`

GCC compatibility:

- `-Wformat-y2k`

### -Wloop-analysis

Cfg: Default
Use: Detect unintended manual incremented `for` loops

Controls:

- `-Wfor-loop-analysis`
- `-Wrange-loop-analysis`

### -Wtautological-constant-in-range-compare

Cfg: Default
Use: Detect out-of-range values

Controls:

- `-Wtautological-constant-out-of-range-compare`
- `-Wtype-limits`

### -Wthread-safety

Cfg: Default
Use: Detecting thread-unsafe code

Controls:

- `-Wthread-safety-analysis`
- `-Wthread-safety-attributes`
- `-Wthread-safety-precise`
- `-Wthread-safety-reference`

### -Wvla

Cfg: Default
Use: Disallow use of VLA's

Controls:

- `-Wvla-extension`

### -Wwritable-strings

Cfg: Default
Use: Detexct faulty string conversion

Controls:

- `-Wdeprecated-writable-strings`

### Others

Cfg: Default
Use: Additional strictness

- `-Warray-bounds-pointer-arithmetic`
- `-Wassign-enum`
- `-Wbad-function-cast`
- `-Wcast-align`
- `-Wcast-qual`
- `-Wcomma`
- `-Wconditional-uninitialized`
- `-Wdouble-promotion`
- `-Wfloat-equal`
- `-Wformat-type-confusion`
- `-Widiomatic-parentheses`
- `-Wmissing-prototypes`
- `-Wnewline-eof`
- `-Wnon-virtual-dtor`
- `-Wold-style-cast`
- `-Wpacked`
- `-Wpointer-arith`
- `-Wshift-sign-overflow`
- `-Wstrict-prototypes`
- `-Wswitch-enum`
- `-Wundef`
- `-Wvariadic-macros`

## Implicit

### -Wmost

Controls:

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

GCC compatibility:

- `-Wvolatile-register-var`

### -Wbool-operation

Controls:

- `-Wbitwise-instead-of-logical`

### -Wdelete-non-virtual-dtor

Controls:

- `-Wdelete-abstract-non-virtual-dtor`
- `-Wdelete-non-abstract-non-virtual-dtor`

### -Wformat

Controls:

- `-Wformat-extra-args`
- `-Wformat-insufficient-args`
- `-Wformat-invalid-specifier`
- `-Wformat-security`
- `-Wformat-zero-length`
- `-Wnonnull`

GCC compatibility:

- `-Wformat-y2k`

### -Wimplicit

Controls:

- `-Wimplicit-function-declaration`
- `-Wimplicit-int`

### -Wmove

Controls:

- `-Wpessimizing-move`
- `-Wredundant-move`
- `-Wself-move`

GCC compatibility:

- `-Wreturn-std-move`

### -Wreorder

Controls:

- `-Wreorder-ctor`
- `-Wreorder-init-list`

### -Wself-assign

Controls:

- `-Wself-assign-field`
- `-Wself-assign-overloaded`

### -Wtautological-compare

Controls:

- `-Wtautological-bitwise-compare`
- `-Wtautological-constant-compare`
- `-Wtautological-objc-bool-compare`
- `-Wtautological-overlap-compare`
- `-Wtautological-pointer-compare`
- `-Wtautological-undefined-compare`

### -Wtautological-constant-compare

Controls:

- `-Wtautological-constant-out-of-range-compare`

### -Wuninitialized

Controls:

- `-Wsometimes-uninitialized`
- `-Wstatic-self-init`
- `-Wuninitialized-const-reference`

### -Wparentheses

Controls:

- `-Wbitwise-conditional-parentheses`
- `-Wbitwise-op-parentheses`
- `-Wdangling-else`
- `-Wlogical-not-parentheses`
- `-Wlogical-op-parentheses`
- `-Woverloaded-shift-op-parentheses`
- `-Wparentheses-equality`
- `-Wshift-op-parentheses`

### -Wunused

Controls:

- `-Wunused-but-set-variable`
- `-Wunused-function`
- `-Wunused-label`
- `-Wunused-lambda-capture`
- `-Wunused-local-typedef`
- `-Wunused-private-field`
- `-Wunused-property-ivar`
- `-Wunused-value`
- `-Wunused-variable`

GCC compatibility:

- `-Wunused-argument`

### -Wunused-function

Controls:

- `-Wunneeded-internal-declaration`

### -Wunused-value

Controls:

- `-Wunevaluated-expression`
- `-Wunused-comparison`
- `-Wunused-result`

### -Wunevaluated-expression

Controls:

- `-Wpotentially-evaluated-expression`

### -Wunused-variable

Controls:

- `-Wunused-const-variable`

### -Wdeprecated-copy

Controls:

- `-Wdeprecated-copy-with-user-provided-copy`

### -Wignored-qualifiers

Controls:

- `-Wignored-reference-qualifiers`

### -Wfuture-attribute-extensions

Controls:

- `-Wc++14-attribute-extensions`
- `-Wc++17-attribute-extensions`
- `-Wc++20-attribute-extensions`

### -Wlong-long

Controls:

- `-Wc++11-long-long`

### -Wdeprecated-copy-with-dtor

Controls:

- `-Wdeprecated-copy-with-user-provided-dtor`

### -Wbool-conversion

Controls:

- `-Wpointer-bool-conversion`
- `-Wundefined-bool-conversion`

### -Wconstant-conversion

Controls:

- `-Wbitfield-constant-conversion`
- `-Wobjc-bool-constant-conversion`

### -Wenum-conversion

- `-Wenum-compare-conditional`
- `-Wenum-enum-conversion`
- `-Wenum-float-conversion`

### -Wenum-compare-conditional

Controls:

- `-Wdeprecated-enum-compare-conditional`

### -Wenum-enum-conversion

Controls:

- `-Wdeprecated-enum-enum-conversion`

### -Wenum-float-conversion

Controls:

- `-Wenum-float-conversion`

### -Wfloat-conversion

Controls:

- `-Wfloat-overflow-conversion`
- `-Wfloat-zero-conversion`

### -Wimplicit-float-conversion

Controls:

- `-Wimplicit-int-float-conversion`
- `-Wobjc-signed-char-bool-implicit-float-conversion`

### -Wimplicit-int-float-conversion

Controls:

- `-Wimplicit-const-int-float-conversion`

### -Wimplicit-int-conversion

Controls:

- `-Wobjc-signed-char-bool-implicit-int-conversion`

### -Wshadow

Controls:

- `-Wshadow-field-in-constructor-modified`
- `-Wshadow-ivar`

### -Wshadow-field-in-constructor

Controls:

- `-Wshadow-field-in-constructor-modified`

### -Wunreachable-code

Controls:

- `-Wunreachable-code-fallthrough`
- `-Wunreachable-code-loop-increment`

### -Wrange-loop-analysis

Controls:

- `-Wrange-loop-bind-reference`
- `-Wrange-loop-construct`

### -Wtype-limits

Controls:

- `-Wtautological-type-limit-compare`
- `-Wtautological-unsigned-char-zero-compare`
- `-Wtautological-unsigned-enum-zero-compare`
- `-Wtautological-unsigned-zero-compare`

## References

- [release.llvm.org](https://releases.llvm.org/14.0.0/tools/clang/docs/DiagnosticsReference.html)
