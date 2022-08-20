# Configurations

## Default

- Standards: C99, C++03
- Warnings: Strict
- Disabled: RTTI and exceptions
- Optimizations: `-flto=thin`, `--gc-sections`

## Debug

Inherits default

- Optimizations: `-O0`
- Debugging: LLDB, fortify source, sanitizers=cfi,undefined

## Release

Inherits default

- Warnings: Error on unused
- Optimizations: `-Os`
