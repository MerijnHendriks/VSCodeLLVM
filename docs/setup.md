# Setup

## Install

### 1. Packages

#### Ubuntu

1. Run the following command(s) in the terminal:

```sh
sudo apt install --no-install-recommends llvm lld clang clang-format clang-tidy clangd cmake ninja-build
```

#### Windows

1. Download and install MSYS2: [link](https://github.com/msys2/msys2-installer/releases/latest)
2. Run the following command(s) with `MSYS2 MinGW Clang x64`:

```sh
pacman -S mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-clang-tools-extra mingw-w64-clang-x86_64-ninja mingw-w64-clang-x86_64-cmake
```

### 2. Visual Studio Code

1. Download and install VSCode: [link](https://code.visualstudio.com/download)
2. Install the following extensions:
   - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
   - CodeLLDB: [link](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

### 3. Project

1. Open `VSCodeLLVM.code-workspace` in Visual Studio Code
2. Allow workspace to change settings

## Notes

For windows, you must distribute the Universal C Runtime (UCRT) alongside your
application for Windows versions older than Windows 10.

For linux, if you use the flatpak version of vscode you'll need to grant it
additional permissions to access system tools and libraries.
