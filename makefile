debug:
	@$(MAKE) -C app -f app.mk debug

release:
	@$(MAKE) -C app -f app.mk release

clean:
	@$(MAKE) -C app -f app.mk clean

generate-compiledb:
	mkdir -p .cache/clangd/
	@$(MAKE) -Bnwk debug | \
	pipx run compiledb -o .cache/clangd/compile_commands.json
