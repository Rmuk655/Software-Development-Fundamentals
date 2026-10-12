# Software Development Fundamentals

Hands-on exercises in the everyday toolchain of a systems programmer: C linking and multi-binary builds with
Make, functional programming in OCaml, Linux shell commands and scripting, and Python text processing.

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

## What is here

| Topic | Folder | What it contains |
|---|---|---|
| Linking in C | `problem-statements/linking-in-c.docx` | Short write-up on what a linker does and how it is used in a C toolchain |
| OCaml basics | `problem-statements/intro-to-ocaml.docx` | Tour of OCaml: `utop` experiments, modified expressions and explanations of the type errors |
| Functional programming in OCaml | `ocaml-practice-problems/` | Eight problems: list splitting, `filter_map`, flattening, binary trees, `option` results (`safe_div`), a shape variant type, and exceptions (`find_index`), all via pattern matching and recursion |
| Linux shell | `linux-shell-1/`, `linux-shell-2/`, `linux-shell-3/` | Command-line exercises with captured sessions (screenshots) and `Assign6.sh` |
| More OCaml | `ocaml-additional-practice/` | Additional OCaml problems |
| Shell scripting | `shell-scripting/scripts/` | Nine scripts (`Problem_1.sh` … `Problem_9.sh`): dates, renaming, word lookup, file generation, a phonebook, CSV column arithmetic, arithmetic-progression row appending, a spell checker and file combining |
| Python text processing | `python-text-processing/` | Collatz step count, reversing a file's lines, word and character counts, dictionary diffs, record sorting and gematria; notebook version alongside |
| Multi-binary Makefile | `multi-binary-makefile/` | Three binaries (`math_ops`, `string_ops`, `data_ops`) plus a combined `all_ops`, built from shared headers in `include/` and per-module sources in `src/`, with a `DEBUG=1` mode |

Problem statements for the shell scripting, Python and Makefile exercises are in `problem-statements/`.

## Running things

```bash
# OCaml (needs ocaml; utop is optional)
ocaml ocaml-practice-problems/problem_1.ml

# Shell scripts read and write files next to them, so run them from their folder
cd shell-scripting/scripts && bash Problem_1.sh

# Python (interactive: it prompts for each problem's input)
cd python-text-processing/solution && python3 CS24BTECH11036.py

# Multi-binary build
cd multi-binary-makefile && make && ./all_ops      # or: make DEBUG=1, make clean
```

`Problem_8.sh` (spell checker) uses `/usr/share/dict/words` when present and otherwise falls back to the
`words.txt` next to it.

## License

MIT, see [LICENSE](LICENSE).
