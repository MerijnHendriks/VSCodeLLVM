# Setup

## Install

### 1. Packages

#### Ubuntu

1. Run the following command(s) in the terminal:

```sh
sudo apt install --no-install-recommends llvm lld clang clang-format clang-tidy clangd python3-pip
pip install compiledb
```

#### Windows

1. Download and install MSYS2: [link](https://github.com/msys2/msys2-installer/releases/latest)
2. Run the following command(s) with `MSYS2 MinGW Clang x64`:

```sh
pacman -S mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-clang-tools-extra  mingw-w64-clang-x86_64-make mingw-w64-clang-x86_64-nasm mingw-w64-clang-x86_64-python-pip
pip install compiledb
```

3. Add symbolic link to `make`:

```cmd
cd C:\msys64\clang64\bin
mklink make C:\msys64\clang64\bin\mingw32-make.exe
```

### 2. Visual Studio Code

1. Download and install VSCode: [link](https://code.visualstudio.com/download)
2. Open `VSCodeLLVM.code-workspace` in Visual Studio Code
3. Allow workspace to change settings

### FAQ

#### I don't have MSYS2 as terminal in VSCode

Copy-paste the terminal profile from the workspace to the `settings.json` of
vscode.
