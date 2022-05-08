pushd ..
find . -name "*.tex" -print0 | while read -d $'\0' file
do
    echo "🔨 Compiling: "$file
    if ! latexmk -pdf -cd -silent "$file" > /dev/null ; then
        echo ""
        echo ">>>>>>> ⛔️ WARNING! Something's Wrong Here! <<<<<<<"
        echo "Panic! Failed to compile |"$file
        echo "----------------------------------------------------"
    else
        echo "✅ Compile Success"
    fi
    echo "\n"
done
popd
