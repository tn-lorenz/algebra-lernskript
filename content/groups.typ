#import "../style.typ": central-col, definition, hi, remark, theorem

= Gruppen

#definition(title: "Untergruppe")[ \
  Eine #hi[_Untergruppe_] $H$ einer Gruppe $G$ ist eine Teilmenge $H subset.eq G$, die selbst eine Gruppe bezüglich der Verknüpfung von $G$ ist. Wir schreiben dann auch $H < G$.
] <def-untergruppe>

#theorem(title: "Untergruppenkriterium")[ \
  Eine Teilmenge $H subset.eq G$ einer Gruppe $G$ ist genau dann eine Untergruppe von $G$, wenn gilt
  $ forall a, b in H => a compose b^(-1) in H $
]
