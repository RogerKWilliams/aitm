#!/bin/bash

# ya hey look everyone Charlie's about the worst shell scripter you ever saw :-)
# don't go running this thing without a thorough understanding.
# (well, it probably wouldn't hurt you, but it'll certainly blow up all over the place.)

# this builds the book as html and pdf, and pushes to the working and pages repos in one command.

# yes this is really tightly coupled to my workstation.
# I am using my "adoc" toolchain (stolen from Pro Git) as a basis.
# https://github.com/CharlesTBetz/adoc
# two peer repos, one "aitm" and one "aitm-pages"
# making this collaborative will need some help.

#build html
bundle exec rake book:build
mv aitm-student.html index.html  # hack, I should figure out the CLI parm for the rake command
cp -R images ../aitm-pages/
cp *.html ../aitm-pages/
cp *.pdf ../aitm-pages/

# build pdf
# a2x --verbose -fpdf -dbook --fop --icons --icons-dir=$HOME/opt/asciidoc/images/icons aitm.adoc
