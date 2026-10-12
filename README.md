# Software Development Fundamentals

Hands-on exercises in the everyday toolchain of a systems programmer: C linking and multi-binary builds with
Make, functional programming in OCaml, Linux shell commands and scripting, and Python text processing.

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## What is here

| Topic | Folder | What it contains |
|---|---|---|
| Linking in C | `Assignment 1 - Linkers in C.docx` | Short write-up on what a linker does and how it is used in a C toolchain |
| OCaml basics | `Assignment 2 - Intro to OCaml.docx` | Tour of OCaml: `utop` experiments, modified expressions and explanations of the type errors |
| Functional programming in OCaml | `Assignment 3 - OCaml Practice Problems/` | Eight problems (list splitting and other list/recursion exercises) using pattern matching and recursion |
| Linux shell | `Assignment 4`, `5`, `6 - Linux shell commands/` | Command-line exercises with captured sessions (screenshots) and `Assign6.sh` |
| More OCaml | `Assignment 7 - OCaml Additional Practice/` | Additional OCaml problems (`OCaml Practice Assignment.ml`) |
| Shell scripting | `Assignment 8 - Shell Scripting/` | Nine scripts (`Problem_1.sh` … `Problem_9.sh`) over text and CSV input files |
| Python text processing | `Assignment 9 - Python/` | Python script plus notebook for file and line processing (reversal, word counts) |
| Multi-binary Makefile | `Assignment 10 - MultiBinary Makefile/` | Three binaries (`mathop`, `stringop`, `dataop`) built from shared headers in `include/` and per-module sources in `src/` |

The `.docx` and `.pdf` files at the top level are the problem statements for the shell scripting, Python and
Makefile exercises.

## Running things

```bash
# OCaml (needs ocaml / utop)
ocaml "Assignment 3 - OCaml Practice Problems/problem_1.ml"

# Shell scripts: run from inside the folder, since they read the input files next to them
cd "Assignment 8 - Shell Scripting/Assign8_cs24btech11036" && bash Problem_1.sh

# Python
python3 "Assignment 9 - Python/CS24BTECH11036/CS24BTECH11036.py"

# Multi-binary build: see the .mak file in the folder
make -f "Assignment 10 - MultiBinary Makefile/Assignment_10_CS24BTECH11036.mak"
```

## License

MIT, see [LICENSE](LICENSE).
