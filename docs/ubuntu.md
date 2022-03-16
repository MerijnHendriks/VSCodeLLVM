# Ubuntu

## Requirements

**Tool**           | **Version**
------------------ | -----------
CMake              | 3.19+
LLVM               | 13+
Ninja              | 1.10+
Visual Studio Code | 1.34+

## Setup

### Packages

1. Run the following command(s) in the terminal:

```sh
sudo apt install --no-install-recommends llvm lld clang clang-format clang-tidy clangd cmake ninja-build
```

### Visual Studio Code

1. Download and install VSCode: [link](https://code.visualstudio.com/download)
2. Install the following extensions:
   - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
   - CodeLLDB: [link](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

### Project

1. Open `VSCodeLLVM.code-workspace` in Visual Studio Code
2. Allow workspace to change settings
