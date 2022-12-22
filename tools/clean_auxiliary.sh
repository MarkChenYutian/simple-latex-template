find . -type f -name '*.fdb_latexmk' -delete
find . -type f -name '*.aux' -delete
find . -type f -name '*.log' -delete
find . -type f -name '*.fls' -delete
find . -type f -name '*.toc' -delete
find . -type f -name '*.out' -delete
find . -type f -name '*.bcf' -delete
find . -type f -name '*.aux' -delete
find . -type f -name '*.fls' -delete
find . -type f -name '*.xml' -delete
find . -type f -name '*.xdv' -delete
find . -type f -name '*.synctex.gz' -delete
find . -type d -name '_minted-*' -exec rm -r {} +
