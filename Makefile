PDF_TARGET = vestnik
BUILD_DIR = build

PDF_FILE := $(BUILD_DIR)/$(PDF_TARGET).pdf

.PHONY: pdf clean

pdf: $(PDF_FILE)

$(PDF_FILE): src/main.tex
	latexmk -xelatex -pvc -output-directory=$(BUILD_DIR) -jobname=$(PDF_TARGET) src/main.tex
clean:
	latexmk -C src/main.tex
	rm -rf $(BUILD_DIR)/*
