
all: index.xhtml handbook.xhtml handbook.8

index.xhtml: index.html template.xhtml
	pandoc -R -s --template template.xhtml --css style.css index.html -o index.xhtml

handbook.xhtml: handbook.md template.xhtml
	pandoc -s --toc --template template.xhtml -V content --css style.css handbook.md -o handbook.xhtml

handbook.8: handbook.md
	pandoc handbook.md -o handbook.8

