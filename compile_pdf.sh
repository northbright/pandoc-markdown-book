mkdir -p build

# pandoc version 2.7.3
pandoc \
    --pdf-engine=xelatex \
    --template=./templates/eisvogel.tex \
    --highlight-style tango \
    --toc -N \
    -o build/output.pdf \
    -V CJKmainfont="PingFangSC-Regular" \
    --listings \
    src/title.txt src/*.md
    # --template=./templates/eisvogel.latex \
    # --top-level-division=chapter \
    # --filter pandoc-crossref \
    # -V book \
