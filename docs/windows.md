# Windows

## Requirements

**Tool**                  | **Version**
------------------------- | -----------
CMake                     | 3.19+
LLVM                      | 13+
MSYS2                     | 20220128+
Ninja                     | 1.10+

## Setup

### Packages

1. Download and install MSYS2: [link](https://github.com/msys2/msys2-installer/releases/latest)
2. Run the following command(s) with `MSYS2 MinGW Clang x64`:

```sh
pacman -S mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-clang-tools-extra mingw-w64-clang-x86_64-ninja mingw-w64-clang-x86_64-cmake
```

### Visual Studio Code

1. Download and install VSCode: [link](https://code.visualstudio.com/download)
2. Install the following extensions:
   - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
   - CodeLLDB: [link](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

### Project

1. Open `VSCodeLLVM.code-workspace` in Visual Studio Code
2. Allow workspace to change settings

## Notes

You must distribute the Universal C Runtime (UCRT) alongside your application for Windows versions older than Windows 10.
