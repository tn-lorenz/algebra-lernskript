#import "@preview/great-theorems:0.1.2": *
#import "@preview/rich-counters:0.2.2": *
#import "@preview/frame-it:2.0.0": *

#let acc-col = rgb(0, 122, 153) // blau-türkis
#let acc-col2 = rgb(1, 116, 217) // bläulicher
#let acc-col3 = rgb(57, 255, 20) // neon-grün
#let acc-col4 = rgb(174, 255, 0) // neon-limette

#let acc-col5  = rgb(255, 179, 186) // Pastell-Rosa
#let acc-col6  = rgb(255, 223, 186) // Pastell-Pfirsich
#let acc-col7  = rgb(255, 255, 186) // Pastell-Gelb
#let acc-col8  = rgb(186, 255, 201) // Pastell-Minzgrün
#let acc-col9  = rgb(186, 225, 255) // Pastell-Himmelblau
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
#let hi(body) = text(central-col)[*#body*]

#set page(header: [
  #align(center,
    text(
      size: 13pt,
      font: "Linux Libertine"
    )[
      #smallcaps[#text(gray)[Tim Niklas Lorenz]]
    ]
  )
])
#set text(lang: "de", font: "Inter") // font: "Inter" | "IBM Plex Sans" | "Source Sans 3" | "Manrope"

#set heading(numbering: "1.1")
#show: great-theorems-init

#show link: text.with(fill: central-col)

#let mathcounter = rich-counter(
  identifier: "mathblocks",
  inherited_levels: 1
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

= Grundbegriffe
#definition(title: "Halbgruppe")[
  \ Eine #hi[_Halbgruppe_] ist eine Menge $H$, versehen mit einer #hi[*inneren*], #hi[*zweistelligen*] Verknüpfung $compose$, also ein Paar $(H, compose)$ mit
  
  $ compose: H times H -> H, quad (a, b) |-> a compose b $
  und der Eigenschaft, dass die Verknüpfung $compose$ #hi[*assoziativ*] ist, das heißt also \
  
  $ forall a, b, c in G: a compose (b compose c) = (a compose b) compose c $
] <def-halbgruppe>

#definition(title: "Monoid")[
  \ Ein #hi[_Monoid_] ist eine Halbruppe nach @def-halbgruppe über eine Menge $M$, für welche zusätzlich das _eindeutig bestimmte_ neutrale Element $e_M$ existiert, das heißt es gilt
  $ forall m in M exists! e_M in M: m compose e_M = e_M compose m = m $
] <def-monoid>

#definition(title: "Gruppe")[
  \ Eine #hi[_Gruppe_] ist ein Monoid nach @def-monoid über eine Menge $G$, für welchen zusätzlich zu jedem Element $g$ aus $G$ das eindeutig bestimmte Inverse $g^(-1)$ existiert. \ \ Zusammenfassend ist eine Gruppe also eine Menge $G$ versehen mit einer #hi[*inneren*], #hi[*zweistelligen*] Verknüpfung $compose$, also ein Paar $(G, compose)$ mit \
  $ compose: G times G -> G, quad (a, b) |-> a compose b $
  so, dass folgende Axiome erfüllt sind. \
  
  #align(center, block[
    #set align(left)
    
    #hi[$star$] Die Verknüpfung $compose$ ist #hi[*assoziativ*], also 
    $ forall a, b, c in G: a compose (b compose c) = (a compose b) compose c $
    
    #hi[$star$] Es existiert das eindeutig bestimmte neutrale Element $e_G in G$ bezüglich $compose$ mit $ forall g in G: e_G compose g = g compose e_G = g $
    
    #hi[$star$] Für jedes Element $g in G$ existiert ein eindeutig bestimmtes Inverses $g^(-1)$ bezüglich $compose$. Also: $ forall g in G exists!g^(-1) in G: g compose g^(-1) = g^(-1) compose g = e_G $
  ])
] <def-gruppe>

#remark[Bei additiv geschriebenen Gruppen, also $(G, +)$ nennt man das neutrale Element auch _Nullelement_, oder $0_G$. \ Bei multiplikativ geschriebenen Gruppen, also $(G, dot)$, hingegen nennt man es auch _Einselement_, oder $1_G$.]

#definition(title: "abelsche Gruppe")[
  \ Eine #hi[_abelsche Gruppe_] ist eine Gruppe nach @def-gruppe, dessen Verknüpfung $compose$ zusätzlich #hi[*kommutativ*] ist. Das heißt es gilt
  $ forall a, b in G: a compose b = b compose a $
] <def-gruppe-abelsch>

#definition(title: "Ring")[
  \ Eine #hi[_abelsche Gruppe_] ist eine Gruppe nach @def-gruppe, dessen Verknüpfung $compose$ zusätzlich #hi[*kommutativ*] ist. Das heißt es gilt
  $ forall a, b in G: a compose b = b compose a $
] <def-ring>

#definition(title: "Körper")[
  \ Eine #hi[_abelsche Gruppe_] ist eine Gruppe nach @def-gruppe, dessen Verknüpfung $compose$ zusätzlich #hi[*kommutativ*] ist. Das heißt es gilt
  $ forall a, b in G: a compose b = b compose a $
] <def-körper>

#definition(title: "Modul")[
  \ Eine #hi[_abelsche Gruppe_] ist eine Gruppe nach @def-gruppe, dessen Verknüpfung $compose$ zusätzlich #hi[*kommutativ*] ist. Das heißt es gilt
  $ forall a, b in G: a compose b = b compose a $
] <def-modul>


#pagebreak()
== Übersicht über Strukturen

#show table.cell.where(y: 0): set text(weight: "bold")
#figure(
  table(
    columns: (auto, auto, auto, auto, auto, auto, auto),
    align: (left, center, center, center, center, center, center),
    stroke: none,
    
    [], [Halbgruppe], [Monoid], [Gruppe], [Ring], [Körper], [Modul],
    
    table.hline(start: 0, stroke: 1pt),

    [*Darstellung*],
    [$(H, compose)$ \ $H$],
    [$(M, compose, e)$],
    [$(G, compose)$ \ $G$],
    [$(R, +, dot)$, \ $R, A$],
    [$(K, +, dot)$ \ $K, L$],
    [$(M, +, dot)$ \ $M, N$],
    
    table.hline(start: 0, stroke: 1pt),

    [*innere* zweistellige Verknüpfung],
    [ja],
    [ja],
    [],
    [],
    [],
    [],
    
    table.hline(start: 0, stroke: 1pt),

    [Assoziativität der Verknüpfung],
    [ja],
    [ja],
    [],
    [],
    [],
    [],
    
    table.hline(start: 0, stroke: 1pt),

    [neutrales Element bzgl. Verknüpfung \ (eindeutig)],
    [nein],
    [ja],
    [],
    [],
    [],
    [],
    
    table.hline(start: 0, stroke: 1pt),

    [inverses Element bzgl. Verknüpfung \ (eindeutig)],
    [],
    [],
    [],
    [],
    [],
    [],
    
    table.hline(start: 0, stroke: 1pt),

    [],
    [],
    [],
    [],
    [],
    [],
    [],
    
    table.hline(start: 0, stroke: 1pt),

    [*Bedeutung*],
    [],
    [Eine Halbgruppe mit neutralen Element],
    [Monoid, in dem jedes Element ein Inverses hat],
    [],
    [],
    [],
    
    table.hline(start: 0, stroke: 1pt),
  ),
) <überblick-strukturen>
