# Setup

## Install

### 1. Packages

#### Ubuntu

1. Run the following command(s) in the terminal:

```sh
sudo apt install --no-install-recommends llvm lld clang clang-format clang-tidy clangd nasm pipx
pipx ensurepath
pipx install compiledb
```

#### Windows

1. Download and install MSYS2: [link](https://github.com/msys2/msys2-installer/releases/latest)
2. Run the following command(s) within `MSYS2 CLANG64`:

```sh
pacman -S mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-clang-tools-extra mingw-w64-clang-x86_64-make mingw-w64-clang-x86_64-nasm mingw-w64-clang-x86_64-python-pipx
pipx ensurepath
pipx install compiledb
```

3. Run the following command(s) within `cmd`:

```cmd
:: Add symbolic link to 'make'
cd C:\msys64\clang64\bin
mklink make C:\msys64\clang64\bin\mingw32-make.exe

:: Add 'clangd' to PATH
setx /M PATH "%PATH%;C:\msys64\clang64\bin\"
```

### 2. Visual Studio Code

1. Download and install VSCode: [link](https://code.visualstudio.com/download)
2. Download and install the following VSCode extensions:
    - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
3. Open `solution.code-workspace` in VSCode, allow workspace to change settings
4. VSCode > Terminal > Run Task... > CompileDB: Generate

### FAQ

#### I don't have MSYS2 as terminal in VSCode

Copy-paste the terminal profile from the workspace to the `settings.json` of
vscode.
