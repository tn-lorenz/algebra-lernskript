#import "../style.typ": axioms, central-col, definition, hi, lemma, remark, theorem

= Ringe

#definition(title: "Ring")[
  \ Ein #hi[_Ring_] $R$ oder $A$ _(Nach dem französischen Wort für Ring: "anneau")_ ist das Tripel $(R, +, dot)$ bestehend aus einer Menge $R$ und zwei inneren, zweistelligen Verknüpfungen $+$ und $dot$. Dabei gilt
  #axioms[
    + $(R, +)$ ist eine #link(<def-gruppe-abelsch>)[abelsche Gruppe] \
    + $(R, dot)$ ist ein #link(<def-monoid>)[Monoid] \
    + Es gelten die #hi[Distributivgesetze], das heißt es gilt
    $ forall a, b, c in R: a dot (b+c) = a dot b + a dot c and (b+c) dot a = b dot a + c dot a $
  ]
] <def-ring>

#definition(title: "kommutativer Ring")[
  \ Ein #hi[_kommutativer Ring_] $R$ ist ein Ring dessen Multiplikation zusätzlich #link(<def-gruppe-abelsch>)[kommutativ] ist.
] <def-ring-kommutativ>

#remark[
  Wir werden im folgenden Text nicht-kommutative Ringe mit $R$ und kommutative Ringe mit $A$ bezeichnen.
]

#definition(title: "Integritätsbereich")[
  \ Ein #hi[_Integritätsbereich_] ist ein #link(<def-ring-kommutativ>)[kommutativer Ring] $A$ mit Eins (dem multiplikativen neutralen Element $1_A$), der keine Nullteiler hat. Das heißt es gilt
  $ forall a, b in A: a dot b = 0_A => a = 0_A or b = 0_A $
] <def-integritätsbereich>

#remark[
  Integritätsbereiche nehmen eine Sonderstellung ein, da sie sich nahezu wie die vertrauten Zahlenbereiche verhalten.
]

== Ideale und Quotientenringe
Ideale sind in Ringen das Äquivalent zu Normalteilern in Gruppen. Sie erlauben es, die Struktur durch die Bildung von Quotientenringen zu vereinfachen.

#definition(title: "Ideal")[
  \ Sei $A$ ein kommutativer Ring. Eine Teilmenge $I subset A$ heißt (beidseitiges) #hi[_Ideal_] von $A$, wenn gilt
  #axioms[
    + $(I, +)$ ist eine #link(<def-gruppe-abelsch>)[additive Untergruppe] von $(A, +)$ \
    + $ forall r in R forall a in I: r dot a in I and a dot r in I $
  ]
] <def-ideal>

#remark[
  Nach dem Untergruppenkriterium ist (i) äquivalent zu der Bedingung, dass gilt: $ forall a, b in I: a - b in I $
]

=== Der Zoo der Ideale

#definition(title: "Hauptideal")[
  \ Ein Hauptideal eines (kommutativen) Rings $A$ ist ein Ideal, welches nur von einem Element  $a in A$ erzeugt wird.
  $ (a) := {r a | r in A} $
  Haben wir stattdessen einen nicht kommutativen Ring $R$, müssen wir zwischen Links- und Rechtshauptideal unterscheiden;
  #align(center)[
    $
       #text("(Linkshauptideal)") quad R a & := {r a | r in R} \
      #text("(Rechtshauptideal)") quad a R & := {a r | r in R}
    $
  ]
]

#definition(title: "Primideal")[
  \ Sei $A$ ein Ring. Ein echtes Ideal $frak(p) subset A$ heißt Primideal, falls gilt
  $ a dot b in frak(p) => a in frak(p) or b in frak(p) $
  Primideale sind die Verallgemeinerung von Primzahlen; in den ganzen Zahlen gilt für $a, b in ZZ$ und eine Primzahl $p in ZZ$:
  $ p | a b => p | a or p | b $
  Insbesondere sind in $ZZ$ die Primideale genau diejenigen Ideale, die von Primzahlen erzeugt werden.
]

#theorem[
  Sind $A$ ein kommutativer Ring und $frak(p) subset A$ ein Primideal, so ist genau dann $A\/frak(p)$ nullteilerfrei, also ein Integritätsbereich.
]

#definition(title: "Maximalideal")[

]

#definition(title: "Radikalideal")[

]
