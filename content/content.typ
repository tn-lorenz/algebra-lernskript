#import "../style/style.typ": central-col, definition, hi, remark
#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.2": *

#set text(lang: "de", font: "Inter")
#set heading(numbering: "1.1")
#show: great-theorems-init
#show link: text.with(fill: central-col)

#set page(header: [
  #align(center, text(
    size: 13pt,
    font: "Linux Libertine",
  )[
    #smallcaps[#text(gray)[Tim Niklas Lorenz]]
  ])
])

#include "basics.typ"
#pagebreak()
#include "glossary.typ"
