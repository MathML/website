# MathML logo

This repository contains the scripts to generate various logos of the MathML
Association.

# Licenses

Unless stated otherwise, all the scripts and associated files are distributed
under the [MPL 2.0](https://www.mozilla.org/MPL/2.0/).

The configure script is free software; the Free Software Foundation
gives unlimited permission to copy, distribute and modify it.

The content of the Web page index.html is licensed under a
[Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

The scripts download the [Latin Modern Math](http://www.gust.org.pl/projects/e-foundry/lm-math) and [TeX Gyre Heros](http://www.gust.org.pl/projects/e-foundry/tex-gyre/heros) fonts and bundle them into WOFF files without any modification.
These fonts are distributed under the [LPPL with renaming requirements](http://www.gust.org.pl/projects/e-foundry/licenses/GUST-FONT-LICENSE.txt/view). Please
read the font metadata for details.

The files packaged in the ZIP archive and listed in manifest.txt are distributed
under the (TODO: see issue 1).
                                             
# Build instructions

You need an UNIX environment with
[make](https://www.gnu.org/software/make/),
[unzip](http://www.info-zip.org/UnZip.html),
[wget](https://www.gnu.org/software/wget/),
[inkscape](https://inkscape.org/),
[xsltproc](http://xmlsoft.org/XSLT/),
[zip](http://www.info-zip.org/Zip.html),
[scour](http://codedread.com/scour/) and
[sfnt2woff](https://people.mozilla.org/~jkew/woff/).
To build everything, do:

    ./configure
    make all
