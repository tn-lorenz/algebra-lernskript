#import "@preview/zebraw:0.5.3"
#import "@preview/physica:0.9.8"
#import "@preview/unify:0.7.1"
#import "@preview/fletcher:0.5.8"
#import "@preview/pavemat:0.2.0"
#import "@preview/meander:0.4.1"
#import "@preview/glossy:0.9.1": *

#import "content/glossary.typ": myGlossary

#show: init-glossary.with(myGlossary)

#set page(fill: rgb("#1e1e1e"))
#set text(fill: rgb("#d0d0d0"))

#include "prelude/front-page.typ"
#pagebreak()
#include "prelude/toc.typ"
#pagebreak()
#include "content/content.typ"
#pagebreak()
