# ⚛️ The Photon Language Compiler

**Photon** is a high-performance, statically-typed compiled language designed for speed, memory efficiency, and low-level control. This repository contains the reference compiler (`phc`), featuring a custom recursive-descent parser, an arena-based memory management system, and a direct x86_64 assembly backend.



## 🚀 Getting Started

### Prerequisites
To build and run Photon, you will need a Linux environment with the following installed:
* **NASM**: The Netwide Assembler for generating object files from assembly code.
* **GCC / LD**: For linking the generated assembly into a final executable.
* **Make**: To automate the build and compilation process.

### Installation
Clone the repository and build the compiler using the provided Makefile:

```bash
git clone [https://github.com/your-username/The-Photon-Language-Compiler.git](https://github.com/your-username/The-Photon-Language-Compiler.git)
cd The-Photon-Language-Compiler
make
```
