# Lua Pairs Iterator Bug

This repository demonstrates a potential issue with Lua's `pairs` iterator when used with deeply nested tables.  Under certain circumstances, `pairs` might skip elements, leading to incomplete traversal or unexpected results.

## The Problem

The provided `bug.lua` file contains a function `foo` that recursively iterates over a nested table using `pairs`. However, this approach can fail if the table structure is complex or modified during iteration.  This example highlights the issue, but other scenarios might trigger this unexpected behavior.

## Solution

The `bugSolution.lua` provides a workaround using a different iteration method to ensure all elements are correctly processed, regardless of the table's structure.