root_dir="src/"
export_dir="export/"
export_targets=(
    "test/readme"
)

for target in ${export_targets[@]}; 
do
    texpath="${root_dir}${target}.tex"
    pdfpath="${root_dir}${target}.pdf"
    dir=$(dirname "$target")
    exportfolder="${export_dir}${dir}"
    exportpath="${export_dir}${target}.pdf"

    printf "🟡 - ${texpath} Building..."
    latexmk -pdf -cd -silent -quiet -shell-escape -interaction=batchmode "$texpath" &> /dev/null
    # latexmk -pdf -cd -shell-escape "$texpath"
    mkdir -p ${exportfolder}
    mv $pdfpath $exportpath
    printf "\r\033[K🟢 - ${pdfpath}\n"
done

# sh tools/clean_auxiliary.sh
