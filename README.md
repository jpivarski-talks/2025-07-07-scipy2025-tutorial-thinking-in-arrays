# SciPy 2025 tutorial: Thinking in arrays

TODO. See the [2023 repo](https://github.com/jpivarski-talks/2023-07-11-scipy2023-tutorial-thinking-in-arrays) for guidance.

* https://cfp.scipy.org/scipy2025/talk/MP7C33/
* 07-07, 08:00–12:00 (US/Pacific), Room 315

## Local installation (`pixi`)

```shell
pixi init --import=environment.yml
pixi shell
```

## Outline

* 0:00‒0:15 (15 min) Lecture 1: Array-oriented programming and its benefits. Simple and complex (3 body problem) examples of imperative, functional, and array-oriented styles. Speed and memory advantages in Python. What the array-oriented paradigm emphasizes/is good for: interactive analyses of distributions. Path length as a worked example.
* 0:15‒0:35 (20 min) Project 1: Conway’s Game of Life using arrays. Imperative solution is given, as is an initial condition that makes boundary conditions unimportant, simplifying the problem. Students’ array-oriented solutions should be much faster than imperative Python. For extra glory, there’s a slick solution involving convolutions.
* 0:35‒0:45 (10 min) Break.
* 0:45‒1:00 (15 min) Solutions to project 1. Show manual solution without boundary conditions first, then boundary conditions, then the slick solution involving convolutions.
* 1:00‒1:15 (15 min) Lecture 2: Disadvantages of array-oriented programming. (1) The problem of intermediate arrays, shown using the quadratic formula, with timing, compared to pre-compiled C code. (2) The “iterate until converged” problem, shown using a one-dimensional minimizer (Newton’s method) for an array of initial states; talk about epochs in ML.
* 1:15‒1:35 (20 min) Project 2: Iterative computations on arrays. Given imperative and array-oriented implementations of a special function (incomplete gamma) that has to iterate until converged, ask for one that prevents unnecessary calculations by keeping track of which array elements have already converged.
* 1:35‒1:45 (10 min) Break.
* 1:45‒2:00 (15 min) Solutions to project 2. Show a working example with bookkeeping and compare timings with and without.
* 2:00‒2:15 (15 min) Lecture 3: JIT-compilation with Numba and JAX. Describe JIT-compilation as the solution to the intermediate array problem (1). First Numba then JAX on the quadratic formula. Show that Numba only accelerates if you write imperative code, unlike JAX, and show that JAX can’t follow if-branches or loops of unknown length.
* 2:15‒2:35 (20 min) Project 3: JIT-compilation of the Mandelbrot set. Given imperative Python and array-oriented NumPy with timings, ask for a faster version using Numba and JAX.
* 2:35‒2:45 (10 min) Break.
* 2:45‒3:00 (15 min) Solutions to project 3. Show the full “Mandelbrot on all accelerators” and note that array-oriented programming is advantageous for GPU programming, even beyond Python.
* 3:00‒3:15 (15 min) Lecture 4: Ragged and deeply nested arrays. Show examples of ragged, nested, missing, and heterogeneous data, and how it can still make sense to treat them as arrays. Conversion to and from “tidy” data (tabular with references) to compare and contrast.
* 3:15‒3:35 (20 min) Project 4: Exploring data in ragged arrays. Compute path lengths of taxi trips from Parquet files.
* 3:35‒3:45 (10 min) Break.
* 3:45‒4:00 (15 min) Solutions to project 4. After showing solutions, point to https://github.com/hsf-training/array-oriented-puzzles for more fun.
