# Setup

## Install

### 1. Packages

#### Ubuntu

1. Run the following command(s) in the terminal:

```sh
sudo apt install --no-install-recommends llvm lld clang clang-format clang-tidy clangd
```

#### Windows

1. Download and install MSYS2: [link](https://github.com/msys2/msys2-installer/releases/latest)
2. Run the following command(s) with `MSYS2 MinGW Clang x64`:

```sh
pacman -S make mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-clang-tools-extra
```

3. Add symbolic link to `make`:

```sh
cd C:\msys64\clang64\bin
mklink make C:\msys64\usr\bin\make.exe
```

### 2. Visual Studio Code

1. Download and install VSCode: [link](https://code.visualstudio.com/download)
2. Install the following extensions:
   - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)

### 3. Project

1. Open `VSCodeLLVM.code-workspace` in Visual Studio Code
2. Allow workspace to change settings
