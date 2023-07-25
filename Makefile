OCAML_SRC = src/todo.ml src/file_io.ml src/user_input.ml src/main.ml
OUTPUT = todo_manager
OCAML_COMPILER = ocamlc
OCAML_FLAGS = -o $(OUTPUT)

all:
	$(OCAML_COMPILER) $(OCAML_FLAGS) $(OCAML_SRC)

clean:
	rm -f $(OUTPUT) *.cmi *.cmo

.PHONY: all clean
