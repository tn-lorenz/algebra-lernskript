#import "../style.typ": axioms, central-col, definition, hi, remark, theorem

= Moduln

#definition(title: "Modul")[
  \ Ein #hi[_Modul_] $M$ über einem #link(<def-ring-kommutativ>)[kommutativen Ring] $A$, oder auch $A$-Modul, ist eine additive #link(<def-gruppe-abelsch>)[abelsche Gruppe] $(M, +)$ zusammen mit einer zweistelligen Abbildung (Verknüpfung)
  $ A times M -> M, quad (a, m) |-> a dot m, $
  der Skalarmultiplikation. Für die skalare Multiplikation gilt insbesondere #hi[Linearität];
  #axioms[
    + $a_1 dot (a_2 dot m) = (a_1 dot a_2) dot m$ \
    + $(a_1 + a_2) dot m = a_1 dot m + a_2 dot m$ \
    + $a dot (m_1 + m_2) = a dot m_1 + a dot m_2$ \
  ]
] <def-modul>

#remark[
  Damit sind Moduln Verallgemeinerungen von $K$-Vektorräumen.
]

#definition(title: "unitärer Modul")[
  Ein #hi[_unitärer Modul_] $M$ ist ein #link(<def-modul>)[Modul], wobei für $A$ das eindeutig bestimmte Einselement $1_A$ existiert.
]
