#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.2": *
#import "@preview/frame-it:2.0.0": *

#let acc-col = rgb(0, 122, 153) // blau-türkis
#let acc-col2 = rgb(1, 116, 217) // bläulicher
#let acc-col3 = rgb(57, 255, 20) // neon-grün
#let acc-col4 = rgb(174, 255, 0) // neon-limette

#let acc-col5 = rgb(255, 179, 186) // Pastell-Rosa
#let acc-col6 = rgb(255, 223, 186) // Pastell-Pfirsich
#let acc-col7 = rgb(255, 255, 186) // Pastell-Gelb
#let acc-col8 = rgb(186, 255, 201) // Pastell-Minzgrün
#let acc-col9 = rgb(186, 225, 255) // Pastell-Himmelblau
#let acc-col10 = rgb(218, 186, 255) // Pastell-Lavendel
#let acc-col11 = rgb(255, 186, 245) // Pastell-Magenta
#let acc-col12 = rgb(186, 255, 255) // Pastell-Türkis
#let acc-col13 = rgb(210, 240, 180) // Pastell-Salbei
#let acc-col14 = rgb(255, 218, 185) // Pastell-Aprikose
#let acc-col15 = rgb(200, 230, 255) // Pastell-Eisblau
#let acc-col16 = rgb(230, 200, 255) // Pastell-Flieder

#let acc-col17 = rgb(255, 140, 180) // Bubblegum Pink
#let acc-col18 = rgb(255, 190, 120) // Soft Orange
#let acc-col19 = rgb(255, 240, 120) // Cream Yellow
#let acc-col20 = rgb(140, 255, 180) // Mint Green
#let acc-col21 = rgb(120, 220, 255) // Sky Blue
#let acc-col22 = rgb(180, 160, 255) // Periwinkle
#let acc-col23 = rgb(255, 150, 230) // Orchid Pink
#let acc-col24 = rgb(120, 255, 240) // Aqua Mint

#let central-col = acc-col21
#let hi(body) = text(central-col)[#body]

#set page(header: [
  #align(center, text(
    size: 13pt,
    font: "Linux Libertine",
  )[
    #smallcaps[#text(gray)[Tim Niklas Lorenz]]
  ])
])
#set text(lang: "de", font: "Inter") // font: "Inter" | "IBM Plex Sans" | "Source Sans 3" | "Manrope"

#set heading(numbering: "1.1")
#show: great-theorems-init

#show link: text.with(fill: central-col)

#let mathcounter = rich-counter(
  identifier: "mathblocks",
  inherited_levels: 1,
)

#let definition = mathblock(
  blocktitle: hi[Definition],
  counter: mathcounter,
)

#let theorem = mathblock(
  blocktitle: hi[Satz],
  counter: mathcounter,
)

#let lemma = mathblock(
  blocktitle: "Lemma",
  counter: mathcounter,
)

#let remark = mathblock(
  blocktitle: "Bemerkung",
  prefix: hi[_Bemerkung._],
  inset: 8pt,
  stroke: (paint: central-col, thickness: 1.5pt), // fill
  radius: 4pt,
)

#let proof = proofblock(
  prefix: hi[_Beweis._],
)
