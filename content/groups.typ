#import "../style.typ": axioms, central-col, definition, hi, remark, theorem

= Gruppen

#definition(title: "Halbgruppe")[
  \ Eine #hi[_Halbgruppe_] ist eine Menge $H$, versehen mit einer inneren, zweistelligen Verknüpfung $compose$, also ein Paar $(H, compose)$ mit

  $ compose: H times H -> H, quad (a, b) |-> a compose b $
  und der Eigenschaft, dass die Verknüpfung $compose$ #hi[assoziativ] ist, das heißt also \

  $ forall a, b, c in H: a compose (b compose c) = (a compose b) compose c $
] <def-halbgruppe>

#definition(title: "Monoid")[
  \ Ein #hi[_Monoid_] ist eine #link(<def-halbgruppe>)[Halbgruppe] nach @def-halbgruppe über eine Menge $M$, für welches zusätzlich das _eindeutig bestimmte_ neutrale Element $e_M$ existiert, das heißt es gilt
  $ exists! e_M in M forall m in M: m compose e_M = e_M compose m = m $
] <def-monoid>

#definition(title: "Gruppe")[
  \ Eine #hi[_Gruppe_] ist ein #link(<def-monoid>)[Monoid] nach @def-monoid über eine Menge $G$, für welches zusätzlich zu jedem Element $g$ aus $G$ das eindeutig bestimmte Inverse $g^(-1)$ existiert. \ \ Zusammenfassend ist eine Gruppe also eine Menge $G$ versehen mit einer #hi[inneren], #hi[zweistelligen] Verknüpfung $compose$, also ein Paar $(G, compose)$ mit \
  $ compose: G times G -> G, quad (a, b) |-> a compose b $
  so, dass folgende Axiome erfüllt sind. \

  #axioms[
    + Die Verknüpfung $compose$ ist #link(<def-halbgruppe>)[assoziativ] \
    + Es existiert das eindeutig bestimmte neutrale Element $e_G in G$ bezüglich $compose$ mit $ forall g in G: e_G compose g = g compose e_G = g $ \
    + Für jedes Element $g in G$ existiert ein eindeutig bestimmtes Inverses $g^(-1)$ bezüglich $compose$. Also: $ forall g in G exists!g^(-1) in G: g compose g^(-1) = g^(-1) compose g = e_G $
  ]
] <def-gruppe>

#remark[Bei additiv geschriebenen Gruppen, also $(G, +)$ nennt man das neutrale Element auch _Nullelement_, oder $0_G$. \ Bei multiplikativ geschriebenen Gruppen, also $(G, dot)$, hingegen nennt man es auch _Einselement_, oder $1_G$.]

#remark[
  Für die grundlegenden Definitionen haben wir das Symbol $compose$ als allgemeines Zeichen für eine beliebige Verknüpfung verwendet. Gruppen werden jedoch meist multiplikativ notiert, also als $(G, dot)$. Im Folgenden verwenden wir daher $dot$ für multiplikative und $+$ für additive Verknüpfungen. Das Multiplikationszeichen werden wir außerdem häufig weglassen und beispielsweise $a b$ anstelle von $a dot b$ schreiben.
]

#definition(title: "abelsche Gruppe")[
  \ Eine #hi[_abelsche Gruppe_] ist eine #link(<def-gruppe>)[Gruppe] nach @def-gruppe, dessen Verknüpfung zusätzlich #hi[kommutativ] ist. Das heißt es gilt
  $ forall a, b in G: a b = b a $
] <def-gruppe-abelsch>

#definition(title: "Untergruppe")[ \
  Eine #hi[_Untergruppe_] $H$ einer Gruppe $G$ ist eine Teilmenge $H subset.eq G$, die selbst eine Gruppe bezüglich der Verknüpfung von $G$ ist. Wir schreiben dann auch $H <= G$.
] <def-untergruppe>

#theorem(title: "Untergruppenkriterium")[ \
  Eine Teilmenge $H subset.eq G$ einer Gruppe $G$ ist genau dann eine Untergruppe von $G$, wenn gilt
  $ forall a, b in H => a b^(-1) in H $
]

#remark[
  Auch die Schreibweise $H < G$, oder auch $H subset G$ werden häufig verwendet, um anzuzeigen, dass $H$ eine Untergruppe von $G$ ist. Wir werden uns in diesem Skript jedoch auf die Schreibweisen $H <= G$ oder $H subset.eq G$ beschränken, da jede Gruppe trivialerweise auch eine Untergruppe von sich selbst ist (Also Gleichheit der Mengen gelten kann) und wir eine klare Unterscheidung zwischen Teilmengen und echten Teilmengen beibehalten wollen.
]

== Normalteiler und Quotientengruppen

#definition(title: "Menge der Linksnebenklassen")[
  Sei $G$ eine Gruppe und $H <= G$ eine Untergruppe. Die Menge der _Linksnebenklassen_ $G\/H$ ist definiert als
  $ G \/ H := { g compose H | g in G } = { g compose h | g in G, h in H } $
  Auf dieser Menge können wir nun eine Gruppenstruktur definieren, dies ist allerdings nur dann möglich, wenn $H$ ein #link(<def-normalteiler>)[Normalteiler] von $G$ ist.
]

#definition(title: "Normalteiler")[
  Sei $G$ eine Gruppe und $H <= G$ eine Untergruppe. Wir nennen $H$ einen #hi[_Normalteiler_] von $G$, wenn gilt
  $ forall g in G forall h in H: g^(-1) h g in H $
  Wir schreiben dann auch $H lt.closed.eq G$.
] <def-normalteiler>

#remark[
  Dies ist äquivalent zu der Bedingung, dass die Links- und Rechtsnebenklassen von $H$ in $G$ übereinstimmen, also
  $ forall g in G: g H = H g $
]

#theorem[
  Jede Untergruppe einer abelschen Gruppe ist ein Normalteiler.
]

#definition(title: "Quotientengruppe")[
  Sei $G$ eine Gruppe und $N lt.closed.eq G$ ein Normalteiler. Die Menge der Linksnebenklassen $G\/N = { g N | g in G }$ ist dann eine Gruppe bezüglich der Verknüpfung $dot$ mit
  $ dot: G\/N times G\/N -> G\/N $
  $ (g N) dot (h N) := (g h) N, quad g, h in G $
  Wir nennen diese Gruppe die #hi[_Quotientengruppe_] von $G$ nach $N$.
]
