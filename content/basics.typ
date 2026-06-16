#import "mod.typ"

= Grundbegriffe
#mod.definition(title: "Halbgruppe")[
  \ Eine #mod.hi[_Halbgruppe_] ist eine Menge $H$, versehen mit einer inneren, zweistelligen Verknüpfung $compose$, also ein Paar $(H, compose)$ mit

  $ compose: H times H -> H, quad (a, b) |-> a compose b $
  und der Eigenschaft, dass die Verknüpfung $compose$ #mod.hi[assoziativ] ist, das heißt also \

  $ forall a, b, c in G: a compose (b compose c) = (a compose b) compose c $
] <def-halbgruppe>

#mod.definition(title: "Monoid")[
  \ Ein #mod.hi[_Monoid_] ist eine #link(<def-halbgruppe>)[Halbgruppe] nach @def-halbgruppe über eine Menge $M$, für welche zusätzlich das _eindeutig bestimmte_ neutrale Element $e_M$ existiert, das heißt es gilt
  $ forall m in M exists! e_M in M: m compose e_M = e_M compose m = m $
] <def-monoid>

#mod.definition(title: "Gruppe")[
  \ Eine #mod.hi[_Gruppe_] ist ein #link(<def-monoid>)[Monoid] nach @def-monoid über eine Menge $G$, für welchen zusätzlich zu jedem Element $g$ aus $G$ das eindeutig bestimmte Inverse $g^(-1)$ existiert. \ \ Zusammenfassend ist eine Gruppe also eine Menge $G$ versehen mit einer #mod.hi[inneren], #mod.hi[zweistelligen] Verknüpfung $compose$, also ein Paar $(G, compose)$ mit \
  $ compose: G times G -> G, quad (a, b) |-> a compose b $
  so, dass folgende Axiome erfüllt sind. \

  #align(center, block[
    #set align(left)

    #mod.hi[$star$] Die Verknüpfung $compose$ ist #link(<def-halbgruppe>)[assoziativ] \

    #mod.hi[$star$] Es existiert das eindeutig bestimmte neutrale Element $e_G in G$ bezüglich $compose$ mit $ forall g in G: e_G compose g = g compose e_G = g $

    #mod.hi[$star$] Für jedes Element $g in G$ existiert ein eindeutig bestimmtes Inverses $g^(-1)$ bezüglich $compose$. Also: $ forall g in G exists!g^(-1) in G: g compose g^(-1) = g^(-1) compose g = e_G $
  ])
] <def-gruppe>

#mod.remark[Bei additiv geschriebenen Gruppen, also $(G, +)$ nennt man das neutrale Element auch _Nullelement_, oder $0_G$. \ Bei multiplikativ geschriebenen Gruppen, also $(G, dot)$, hingegen nennt man es auch _Einselement_, oder $1_G$.]

#mod.definition(title: "abelsche Gruppe")[
  \ Eine #mod.hi[_abelsche Gruppe_] ist eine #link(<def-gruppe>)[Gruppe] nach @def-gruppe, dessen Verknüpfung $compose$ zusätzlich #mod.hi[kommutativ] ist. Das heißt es gilt
  $ forall a, b in G: a compose b = b compose a $
] <def-gruppe-abelsch>

#mod.definition(title: "Ring")[
  \ Ein #mod.hi[_Ring_] $R$ oder $A$ _(Nach dem französischen Wort für Ring: "anneau")_ ist das Tripel $(R, +, dot)$ bestehend aus einer Menge $R$ und zwei inneren, zweistelligen Verknüpfungen $+$ und $dot$. Dabei gilt

  #align(center, block[
    #set align(left)

    #mod.hi[$star$] $(R, +)$  ist eine #link(<def-gruppe-abelsch>)[abelsche Gruppe] \

    #mod.hi[$star$] $(R, dot)$ ist ein #link(<def-monoid>)[Monoid] \

    #mod.hi[$star$] Es gelten die #mod.hi[Distributivgesetze], das heißt es gilt
    $ forall a, b, c in R: a dot (b+c) = a dot b + a dot c and (b+c) dot a = b dot a + c dot a $ \
  ])
] <def-ring>

#mod.definition(title: "kommutativer Ring")[
  \ Ein #mod.hi[_kommutativer Ring_] $R$ ist ein Ring dessen Multiplikation zusätzlich #link(<def-gruppe-abelsch>)[kommutativ] ist.
] <def-ring-kommutativ>

#mod.definition(title: "Körper")[
  \ Ein #mod.hi[_Körper_] $K$ ist ein #link(<def-ring>)[Ring] $(K, +, dot)$ mit den zwei #link(<def-gruppe-abelsch>)[abelschen Gruppen] $(K, +)$ und $(K\\{0}, dot)$.
] <def-körper>

#mod.definition(title: "Modul")[
  \ Ein #mod.hi[_Modul_] $M$ über einen #link(<def-ring-kommutativ>)[kommutativen Ring] $A$, oder auch $A$-Modul, ist eine additive #link(<def-gruppe-abelsch>)[abelsche Gruppe] $(K, +)$ zusammen mit einer zweistelligen Abbildung (Verknüpfung)
  $ R times M -> M, quad (r, m) |-> r dot m, $
  der Skalarmultiplikation. Für die skalare Multiplikation gilt insbesondere #mod.hi[Linearität];
  #align(center, block[
    #set align(left)

    #mod.hi[$star$] $r_1 dot (r_2 dot m) = (r_1 dot r_2) dot m$

    #mod.hi[$star$] $(r_1 + r_2) dot m = r_1 dot m + r_2 dot m$

    #mod.hi[$star$] $r dot (m_1 + m_2) = r dot m_1 + r dot m_2$
  ])
] <def-modul>

#mod.remark[
  Damit sind Moduln Verallgemeinerungen von $K$-Vektorräumen.
]

#mod.definition(title: "unitärer Modul")[
  Ein #mod.hi[_unitärer Modul_] $M$ ist ein #link(<def-modul>)[Modul], wobei für $R$ das eindeutig bestimmte Einselement $1_R$ existiert.
]


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

= awd
