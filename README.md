# Functional To-Do List Manager in OCaml

![OCaml Logo](https://github.com/ocaml/ocaml-logo/blob/master/Colour/PNG/colour-icon.png)

This is a command-line application in OCaml for managing to-do lists using functional programming concepts. The to-do list manager allows users to interactively add, view, update, and delete tasks in their to-do list.

## Features

- Interactive command-line interface (CLI)
- Add tasks to the to-do list
- View the list of tasks
- Update existing tasks
- Remove tasks from the list
- Efficient storage and retrieval using functional data structures (linked lists)
- Persistent data storage, enabling users to retrieve their to-do lists after restarting the application

## Getting Started

### Prerequisites

- OCaml Compiler (>= 4.10.0)
- OCamlbuild (>= 0.14.0)

### Installing

To build the project, compile the source files using the OCaml bytecode compiler (ocamlc):

```bash
ocamlc -o todo_manager todo.ml file_io.ml user_input.ml main.ml
