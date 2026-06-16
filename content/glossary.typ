#import "@preview/glossy:0.9.1": glossary, init-glossary, theme-academic

#let myGlossary = (
  bethe-weizsäcker: (
    short: "Bethe-Weizäcker",
    description: "Eine Formel zur Beschreibung der Bindungsenergie eines Kerns.",
    group: "Formeln und Sätze",
  ),
)

#glossary(
  title: "Sachverzeichnis",
  theme: theme-academic,
  sort: true,
  ignore-case: false,
  show-all: true,
)
