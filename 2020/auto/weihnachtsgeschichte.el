(TeX-add-style-hook
 "weihnachtsgeschichte"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("ulem" "normalem") ("babel" "english") ("inputenc" "utf8" "utf8x") ("geometry" "left=2.0cm" "right=2.0cm" "top=2.5cm" "bottom=2.0cm") ("fontspec" "T1")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "GoudyIn"
    "article"
    "art11"
    "inputenc"
    "fontenc"
    "graphicx"
    "grffile"
    "longtable"
    "wrapfig"
    "rotating"
    "ulem"
    "amsmath"
    "textcomp"
    "amssymb"
    "capt-of"
    "hyperref"
    "color"
    "listings"
    "babel"
    "polyglossia"
    "geometry"
    "titlesec"
    "fancyhdr"
    "pdfpages"
    "lettrine"
    "fontspec")
   (TeX-add-symbols
    '("cb" 1)
    "sectionbreak"
    "initfamily")
   (LaTeX-add-labels
    "sec:orgc1b17fc"
    "sec:orgf467105"
    "sec:org67b450e"
    "sec:orgb5243af"
    "sec:org8ce1ddd"
    "sec:org2489090"
    "sec:org63c5d3e")
   (LaTeX-add-color-definecolors
    "marron"
    "darkblue"
    "lightblue"
    "darkgreen"
    "darkgray"
    "darkred"
    "shadecolor")
   (LaTeX-add-polyglossia-langs
    '("german" "mainlanguage" "babelshorthands=true")))
 :latex)

