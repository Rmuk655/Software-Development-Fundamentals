# Software Development Fundamentals

Compilation of assignments completed for the course **Software Development Fundamentals (SDF)**.

---

## Assignment 1 – Linker in a C Compiler

### Problem Statement
Read and write a short report on the **role and use of a linker** in a C compiler.

---

## Assignment 2 – Tour of OCaml

### Instructions
Visit the official OCaml documentation:

- https://ocaml.org/docs/tour-of-ocaml

For **each code example** up to the section:
- https://ocaml.org/docs/tour-of-ocaml#type-parameters-and-higher-order-functions

You must:

- Run the example in `utop`
- Modify the expression slightly
- Copy the output
- Explain any error messages shown by `utop`
- If you cannot explain an error, write **"Do not understand"** and ask it in the Classroom group

### Example

```ocaml
(* Original expression and output *)
utop # let u = [1; 2; 3; 4];;
val u : int list = [1; 2; 3; 4]

(* Changed expression and output *)
utop # let u = [1; 3; 1.2; 4];;
Error: This expression has type float but an expression was expected of type int
```

**Explanation:**  
List elements in OCaml must all have the same type.

---

## Assignment 3 – Functional Programming in OCaml

> **Important:** Use **pattern matching over lists** and **recursive function definitions** wherever required.

### Q1. List Splitting
Write a function:

```ocaml
split : 'a list -> ('a list * 'a list)
```

- Splits a list into two halves
- If the list has an odd number of elements, the extra element goes into the **first half**

---

### Q2. Filter Map  
**Read about the `option` type**

Implement a function:

```ocaml
filter_map : ('a -> 'b option) -> 'a list -> 'b list
```

- Apply the given function to each element
- If the function returns `Some x`, include `x` in the result
- If it returns `None`, skip the element

---

### Q3. Binary Tree Mapping  
**Using variant typing explained in class**

1. Define a type for a binary tree called `'a tree`
2. Write a function:

```ocaml
tree_map : ('a -> 'b) -> 'a tree -> 'b tree
```

- Maps a function over all elements of the tree
- Use pattern matching on the constructors

---

### Q4. Flattening Lists  
**Recall tail recursion**

1. Implement:

```ocaml
flatten : 'a list list -> 'a list
```

2. Convert this function into a **tail-recursive** version

---

### Q5. Safe Division  
**Recall exception and error discussion**

1. Write:

```ocaml
safe_div : int -> int -> int option
```

- Return `None` if denominator is `0`
- Return `Some result` otherwise

2. Rewrite the function using a `try-with` block

---

### Q6. Shapes and Area  
**Variant type and pattern matching**

1. Create a type `shape` with:
   - `Circle` (radius)
   - `Rectangle` (width and height)

2. Write:

```ocaml
area : shape -> float
```

- Computes the area of a shape

---

### Q7. Finding an Index  
**User-defined exceptions**

Write a function:

```ocaml
find_index : ('a -> bool) -> 'a list -> int
```

- Returns the index of the first element satisfying the predicate
- Raise a custom exception `NotFound` if no such element exists
- The exception should return:
  - Index searched
  - Size of the list

---

### Q8. Parsing Integers  
**Tuples and `int_of_string`**

Write a function:

```ocaml
parse_int_list : string -> int list
```

- Input: comma-separated integers (e.g., "1,2,3,4")
- Output: list of integers
- Handle invalid input using a **user-defined exception**

---

## Assignment 4 – Linux Shell Commands

- Try out the commands discussed in class
- Paste **screenshots** of the outputs

---

## Assignment 5 – Linux Shell Commands

- Try out the commands discussed in class
- Paste **screenshots** of the outputs

---

## Assignment 6 – Linux Shell Commands

- Try out the commands discussed in class
- Paste **screenshots** of the outputs

---

## Assignment 7 – OCaml Additional Practice

Visit:
- https://ocaml.org/exercises

Solve and submit:

- **10** Beginner-level problems
- **5** Intermediate-level problems
- **1** Advanced-level problem

For each problem:

```ocaml
(* Q. Name of the problem *)
(* Solution *)
```

- Collect all questions and solutions into **one file**
- Upload the final file

---

## Assignment 8 – Shell Scripting

Refer to:
- `Assignment_8_Shell_Scripts.docx`

---

## Assignment 9 – Python

Refer to:
- `Assignment_9_Python.pdf`

---

## Assignment 10 – Makefile

Refer to:
- `Assignment_10_MakeFile.docx`
