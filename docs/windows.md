# Windows

## Requirements

**Tool**                  | **Version**
------------------------- | -----------
CMake                     | 3.19+
Ninja                     | 1.10+
Visual Studio Build Tools | 17.1+
Visual Studio Code        | 1.34+

## Setup

### CMake

1. Download the installer: [link](https://cmake.org/download/)
2. For install options:
   - Add to system PATH

### Ninja

1. Download `ninja-win.zip`: [link](https://github.com/ninja-build/ninja/releases/latest)
2. Extract the content to `C:\Program Files\Ninja\bin`
3. Add `C:\Program Files\Ninja\bin` to system PATH

### Visual Studio Build Tools

1. Download the installer: [link](https://visualstudio.microsoft.com/downloads/?q=build+tools#build-tools-for-visual-studio-2022)
2. For components to install, select only the following:
   - `MSVC v143 - VS 2022 C++ x64/x86 build tools (Latest)`
   - `C++ Clang tools for Windows (13.0.0 - x64/x86)`
   - `Windows 10 SDK (10.1.19041.0)`

### Visual Studio Code

1. Download the installer: [link](https://code.visualstudio.com/download)
2. Install the following extensions:
   - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
   - CodeLLDB: [link](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

### Project

1. Open `VSCodeLLVM.code-workspace` in Visual Studio Code
2. Allow workspace to change settings

## FAQ

### Why do I need to install MSVC?

MSVC contains `msvcrt.lib`, `oldnames.lib` as well as some required headers which sadly don't ship with the Windows 10 SDK.
You could use MinGW instead during linking, but I judged that MSVC compatibility is more important.
