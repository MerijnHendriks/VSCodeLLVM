# Ubuntu

## Requirements

**Tool**           | **Version**
------------------ | -----------
CMake              | 3.19+
LLVM               | 13+
Ninja              | 1.10+
Visual Studio Code | 1.34+

## Setup

### LLVM

```sh
#!/bin/bash

# install tools
sudo apt install --no-install-recommends clang clangd clang-tidy clang-format lld llvm cmake ninja-build

# optional: set correct alternatives
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-13 100
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-13 100
sudo update-alternatives --install /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-13 100
sudo update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-13 100
sudo update-alternatives --install /usr/bin/lld lld /usr/bin/lld-13 100
sudo update-alternatives --install /usr/bin/llvm-ar llvm-ar /usr/bin/llvm-ar-13 100
sudo update-alternatives --install /usr/bin/llvm-ranlib llvm-ranlib /usr/bin/llvm-ranlib-13 100
```

### Visual Studio Code

1. Download the package: [link](https://code.visualstudio.com/download)
2. Install the following extensions:
   - clangd: [link](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
   - CodeLLDB: [link](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)

### Project

1. Open `VSCodeLLVM.code-workspace` in Visual Studio Code
2. Allow workspace to change settings

### FAQ

#### Why does clang selects a gcc installation?

For C(++) library and C++ ABI compatability with GCC.
