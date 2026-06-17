#import "@preview/glossy:0.9.1": glossary, init-glossary, theme-academic

#let definitionen = (
  gruppe: (
    short: "Bethe-Weizäcker",
    description: "pimmel",
    group: "Definitionen",
  ),
)

#let sätze = (
  bethe-weizsäcker: (
    short: "Bethe-Weizäcker2",
    description: "Eine Formel zur Beschreibung der Bindungsenergie eines Kerns.",
    group: "Sätze",
  ),
)

#glossary(
  title: "Sachverzeichnis",
  theme: theme-academic,
  sort: true,
  ignore-case: false,
  show-all: true,
)
