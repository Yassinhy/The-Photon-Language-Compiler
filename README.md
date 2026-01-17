#Prerequisites:
To build and run Photon, you will need:Linux (x86_64)NASM (The Netwide Assembler)GCC / LD (For linking)MakeInstallationClone the repository and compile the compiler using the provided Makefile:Bashgit clone https://github.com/your-username/The-Photon-Language-Compiler.git
cd The-Photon-Language-Compiler
make
UsageTo compile a Photon source file (.ph), pass the filename and the target architecture to the compiler:Bash./phc <filename>.ph <architecture>
Example:Bash./phc test.ph x86_64
nasm -f elf64 output.asm && ld output.o -o output
./output
 Supported ArchitecturesArchitectureStatusCommand Flagx86_64✅ Fully Supportedx86_64ARM64🚧 Plannedarm_64📝 Photon Syntax SamplePhoton combines clean syntax with low-level control. Here is a look at what the language looks like:C// Function declaration
add(x:int):int {
    let y:int = 67;
    if (x == 8) {
        exit 0;
    }
}

// Global logic
let x:int = 8;
add(x);     // Function call
x = 5 + 3;  // Assignment and expressions
exit x;     // Exit statement
Compiler ArchitectureThe Photon compiler is built with efficiency in mind, utilizing custom memory arenas to minimize allocation overhead during the compilation process.Frontend: Hand-written Lexer and Recursive Descent Parser.Memory: Custom Arena Allocators for Tokens, AST Nodes, and Symbols.Symbol Table: Scoped symbol management with stack-based offset calculation.Backend: Direct x86_64 assembly generation using the System V AMD64 ABI.🤝 ContributingPhoton is an evolving project. If you are interested in backend development or language design, feel free to fork the repo and submit a Pull Request.
