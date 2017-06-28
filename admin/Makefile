.PHONY: gitInstall RandRStudioInstall windowsInstall

all: gitInstall RandRStudioInstall windowsInstall

clean:
	rm -rf *.md *.html 

%.html: %.Rmd
	echo $(<)
	Rscript -e "library(knitr); knit2html('$(<)')"





