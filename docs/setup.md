# Setup

## Install

### 1. Packages

#### Ubuntu

1. Run the following command(s) in the terminal:

```sh
# download apt packages
sudo apt update
sudo apt install --no-install-recommends llvm lld lldb clang clang-format clang-tidy clangd nasm make

# download python packages
sudo apt install --no-install-recommends pipx
pipx ensurepath
pipx install compiledb
```

#### Windows

1. Download and install MSYS2: [link](https://github.com/msys2/msys2-installer/releases)
2. Run the following command(s) within `MSYS2 CLANG64`:

```sh
# download aur packages
pacman -Syu
pacman -S mingw-w64-clang-x86_64-clang mingw-w64-clang-x86_64-lldb mingw-w64-clang-x86_64-clang-tools-extra mingw-w64-clang-x86_64-nasm mingw-w64-clang-x86_64-make

# download python packages
pacman -S mingw-w64-clang-x86_64-python-pipx
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
    - lldb-dap: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.lldb-dap)
3. VSCode > Extensions > clangd > Settings > Path >
   `C:\msys64\clang64\bin\clangd.exe`
4. VSCode > Extensions > lldb-dap > Settings > Path >
   `C:\msys64\clang64\bin\lldb-dap.exe`
5. VSCode > Terminal > Run Task... > CompileDB: Generate

### FAQ

#### I don't have MSYS2 as terminal in VSCode

Copy-paste the terminal profile from `.vscode/settings.json` into the vscode
user profile settings.
