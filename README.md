//

# The Photon Language Compiler

**Photon** is a high-performance, statically-typed compiled language designed for speed, memory efficiency, and low-level control. This repository contains the reference compiler (`phc`), featuring a custom recursive-descent parser, an arena-based memory management system, and a direct x86_64 assembly backend.

## Getting Started

### Prerequisites

To build and run Photon, you will need a Linux environment with the following installed:

* **NASM**: The Netwide Assembler for generating object files from assembly code.
* **GCC / LD**: For linking the generated assembly into a final executable.
* **Make**: To automate the build and compilation process.

### Installation

Clone the repository and build the compiler using the provided Makefile:

```bash
git clone https://github.com/Yassinhy/The-Photon-Language-Compiler.git
cd The-Photon-Language-Compiler
make

```

### Usage

To compile a Photon source file (`.ph`), specify the filename and the target architecture (currently supporting `x86_64`):

```bash
./phc <filename>.ph <architecture>

```

**Workflow Example:**

```bash
# 1. Compile Photon source to x86_64 Assembly
./phc test.ph x86_64

# 2. Assemble the output and link it
nasm -f elf64 output.asm && ld output.o -o output

# 3. Execute the binary
./output

```

## 🛠 Supported Architectures

| Architecture | Status | Command Flag |
| --- | --- | --- |
| **x86_64** | ✅ Fully Supported | `x86_64` |
| **ARM64** | 🚧 Coming Soon | `arm_64` |

## 📝 Photon Syntax Sample

Photon combines C-like familiarity with modern, explicit type declarations.

```c
// Function declaration with explicit return typing
add(x:int):int {
    let y:int = 67;
    if (x == 8) {
        exit 0;
    }
}

// Entry logic
let x:int = 8;
add(x);             // Function call
x = (5 + 3) * 2;    // Complex expression evaluation
exit x;             // Exit statement (Map to Syscall 60)

```

## Compiler Architecture

The Photon compiler is engineered for high-speed compilation through a streamlined architecture:

* **Frontend**: A hand-written Lexer and Recursive Descent Parser that transforms source code into a structured Abstract Syntax Tree (AST).
* **Memory Management**: Utilizes custom **Arena Allocators** for tokens and nodes. This allows for nearly instantaneous allocation and deallocation of memory across the entire compilation unit, avoiding `malloc` overhead.
* **Symbol Table**: Implements a nested scope system with stack-offset calculations, ensuring safe variable access and deterministic lifetime management.
* **Backend**: Generates direct, optimized x86_64 assembly following the **System V AMD64 ABI** calling convention.

##  My Roadmap

* [x] Basic Integer arithmetic and logic
* [x] Variable assignments and scoping
* [x] Function declarations and calls
* [x] if/ else if/ else statements
* [ ] Loop constructs (`while`, `for`)
* [ ] Floating point support (SSE/AVX)
* [ ] ARM64 Backend implementation

## 🤝 Contributing

Contributions are welcome! If you want to help expand the backend or optimize the parser logic, feel free to fork the repository and submit a Pull Request.

---

*Developed by Yassin — Building the future of systems programming.*
//
