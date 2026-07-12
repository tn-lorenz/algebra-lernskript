#import "../style.typ": central-col, definition, hi, remark
#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.2": *

#set text(lang: "de", font: "Courier Prime")
#show math.equation: set text(lang: "de", font: "STIX Two Math")
// #show math.equation.where(block: true): set text(size: 1.2em)

#set heading(numbering: "1.1")
#show: great-theorems-init
#show link: text.with(fill: central-col)

#set page(
  header: [
    #align(center, text(
      size: 13pt,
      // font: "Linux Libertine",
    )[
      #smallcaps[#text(gray)[Tim Niklas Lorenz]]
    ])
  ],
  numbering: "1",
)

#include "basics.typ"
#pagebreak()
#include "groups.typ"
#pagebreak()
#include "rings.typ"
#pagebreak()
#include "fields.typ"
#pagebreak()
#include "modules.typ"
#pagebreak()
#include "algebras.typ"
#pagebreak()
#include "glossary.typ"
