.DEFAULT_GOAL := clean

rerun: remove_pdf recompile_all clean

clean:
	@echo "🗑 Clean up auxiliary files ..."
	@sh ./tools/clean_auxiliary.sh

remove_pdf:
	@echo "Removing all compile results ..."
	@find . -type f -name '*.pdf' -a -not -name 'assets_*' -delete

recompile_all:
	sh ./tools/recompile_all.sh
