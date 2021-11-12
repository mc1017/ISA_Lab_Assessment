e4 - Instantiate
----------------

Assume that modules exist called `band`, `bor`, `bnot` and `bxor`, each
of which performs the function they are named. `band`, `bor`, and `bxor`
take two 1-bit inputs called `a` and `b`, and produce a result `r`.
`bnot` takes a single input called `a` and produces a result `r`.
It is guaranteed that module inputs are declared in the
order: `a`; `b` (for two-input gates); `r`.

Create a combinatorial module called `mul2x2` which uses these primitive modules
to construct a multiplier. The module should take a 2-bit input
`a`, a 2-bit input `b`, and produce a 4-bit output `r` such that `r=a*b`.

The `mul2x2` module should not contain any logic, conditional statements,
or arithmetic operators, and should completely rely on the module primitives to perform calculations.

You may create other modules within the `mul2x2.v` file, as long as:

- They also do not directly perform any logic.
- Any logic is still performed using `band`, `bor`, `bnot` and `bxor` modules.
- Any extra modules start with the prefix `my_` (for example, `my_full_adder`).
