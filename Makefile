BUILD=ocamlbuild -r -I src -use-ocamlfind

.PHONY: tests.byte
tests.byte:
	$(BUILD) tests.byte

.PHONY: clean
clean:
	$(BUILD) -clean
	rm -rf _build
