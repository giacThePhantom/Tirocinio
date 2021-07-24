(TeX-add-style-hook
 "principal"
 (lambda ()
   (TeX-run-style-hooks
    "../Documentazione/materiale_prodotto/prefix")
   (LaTeX-add-labels
    "fig:label"))
 :latex)

