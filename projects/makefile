debug:
	@$(MAKE) -C app debug

release:
	@$(MAKE) -C app release

clean:
	rm -rf compile_commands.json
	@$(MAKE) -C app clean

analyze:
	$(MAKE) -Bnwk debug | compiledb -o- > compile_commands.json
	@$(MAKE) -C app analyze
