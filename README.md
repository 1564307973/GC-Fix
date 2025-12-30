# 🛠️ GC-Fix

## Language Options

- English
- [中文](README_CN.md)

## 📋 Overview

GC-Fix is a lightweight Windows utility designed to resolve startup issues with "GC-PowerStation" software. By resetting the application's registry settings, it restores the default UI layout and resolves common launch problems.

## ✨ Key Features

- **Minimal Footprint**: Only 6KB in size, optimized for performance
- **Simple Operation**: Single-click execution with clear confirmation messages
- **Safe Registry Handling**: Secure recursive deletion of registry keys
- **Custom Icon**: Easy identification with a distinctive icon
- **Portable**: No installation required, can be run from any location
- **32-bit Compatible**: Works on all Windows versions

## 🚀 Quick Start

1. Download `GC-Fix.exe` to your computer
2. Double-click to launch the application (no installation needed)
3. Click "OK" to confirm the registry reset operation
4. Wait for the success confirmation message
5. Restart GC-PowerStation to see the restored default UI layout

## 🛠️ Technical Specifications

| Parameter | Details |
|-----------|---------|
| **Architecture** | 32-bit Windows Executable |
| **Development Language** | Assembly (MASM32) |
| **File Size** | 6KB |
| **Dependencies** | None (Statically Linked) |
| **Icon Source** | https://www.iconfont.cn/ |
| **Build Tools** | MASM32 Assembler, Resource Compiler |

## 📦 Build Instructions

1. Ensure MASM32 is installed at `D:\masm32`
2. Open a command prompt in the project directory
3. Execute `build.bat` to compile and link the executable
4. The resulting `GC-Fix.exe` will be created in the same directory

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🔧 Acknowledgments

- Developed using MASM32 Assembler
- Utilizes Win32 API for registry operations
- Icon sourced from [iconfont.cn](https://www.iconfont.cn/)

## ⚠️ Important Notice

Always back up your registry before making changes. This tool modifies the Windows registry and should be used with caution.

## 📞 Support

If you encounter any issues or have questions, please:
- Refer to the project documentation
- [Open an issue on GitHub](https://github.com/1564307973/GC-Fix/issues)