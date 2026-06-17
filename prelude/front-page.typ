#import "@preview/pubmatter:0.2.1": open-access-link, show-abstract-block, show-affiliations, show-authors, show-title
//#import "front-matter.typ": fm
#import "@preview/scienceicons:0.1.0": github-icon, open-access-icon
#import "../version.typ": version
#import "../style.typ": central-col

#smallcaps[#text(font: "Noto Sans", gray)[Open Access]] #open-access-icon(color: orange, height: 1.1em, baseline: 20%) //#open-access-link()

#align(horizon, text(17pt)[
  #align(center)[
    #smallcaps[Algebra I und Algebra II \ ein Lernskript]
  ]
])
#align(bottom)[
  #align(center)[
    #smallcaps[#text(gray)[Tim Niklas Lorenz]] #link("https://github.com/tn-lorenz/algebra-lernskript")[
      #github-icon()
    ] \
    #text(central-col)[#raw(version)]
  ]
]


/*#align(horizon, text(17pt)[
  #align(center)[
    #show-title(fm)
    #smallcaps[#show-authors(fm)]
    #show-affiliations(fm)
    #show-abstract-block(fm)
  ]
])

#figure(
  image("../assets/7-300x300.png", width: 33.3%),
)*/
