# CGoL
Life implemented in Haskell


Conway's Game of Life, often referred to simply as Life, is a Turing complete system that exhibits emergent behaviours.  This means it can simulate any computation, such as arithmetic, logic operations, and even algorithms through performance patterns it generates, like gliders or oscillators.

The universe typically consists of an infinite two-dimensional grid of cells, each of which is in one of two possible states: alive or dead. For this demonstration, the example will be played in a finite universe due to memory and computing constraints.


## Rules of Life

**Birth Rule:**
Any dead cell with exactly three live neighbours becomes alive.

**Survival Rule:**
Any live cell with two or three live neighbours stays alive.

**Overpopulation Rule:**
Any live cell with more than three live neighbours dies.

**Underpopulation Rule:**
Any live cell with fewer than two live neighbours dies.


## Demo
