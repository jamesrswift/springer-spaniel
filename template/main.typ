#import "../src/lib.typ" as springer-spaniel
#show: springer-spaniel.template(
  title: [Gas Chromatography -- Mass Spectrometry],
  authors: (
    (
      name: "Name of First Author",
      institute: "Name",
      address: "Address of Institute",
      email: "name@email.address"
    ),
    (
      name: "Name of Second Author",
      institute: "Name",
      address: "Address of Institute",
      email: "name@email.address"
    )
  ),
  abstract: [
    Each chapter should be preceded by an abstract (no more than 200 words) that summarizes the content. The abstract will appear online at #box[www.SpringerLink.com] and be available with unrestricted access. This allows unregistered users to read the abstract as a teaser for the complete chapter.

    Please use the `starred` version of the abstract command for typesetting the text of the online abstracts (cf. source file of this chapter template abstract) and include them with the source files of your manuscript. Use the plain abstract command if the abstract is also to appear in the printed version of the book.
  ]
)

= Section Heading
Use the template chapter.tex together with the document class SVMono (monograph-type books) or SVMult (edited books) to style the various elements of your chapter content.

Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the LATEX automatism for all your cross-references and citations. And please note that the first line of text that follows a heading is not indented, whereas the first lines of all subsequent paragraphs are.

#pagebreak()
// #set page(header:  text(size:7pt)[2 #h(1fr) Name of First Author and Name of Second Author],)

= Section Heading <sec:2>

#let LaTeX = box({
  [L];box(move(
    dx: -4.2pt, dy: -1.2pt,
    box(scale(65%)[A])
  ));box(move(
  dx: -5.7pt, dy: 0pt,
  [T]
));box(move(
  dx: -7.0pt, dy: 2.7pt,
  box(scale(100%)[E])
));box(move(
  dx: -8.0pt, dy: 0pt,
  [X]
));h(-8.0pt)
})

Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the #LaTeX automatism for all your cross-references and citations.

Please note that the first line of text that follows a heading is not indented, whereas the first lines of all subsequent paragraphs are.

Use the standard `equation` environment to typeset your equations, e.g.

$
a times b = c ,
$

however, for multiline equations we recommend to use the `eqnarray` environment#footnote[In physics texts please activate the class option `vecphys` to depict your vectors in #text(weight: "black", style: "italic")[boldface-italic] type - as is customary for a wide range of physical subjects].

$
abs(nabla_alpha^mu (y)) &<= 1/(d - a) integral abs(nabla 1/( abs(𝜉 - y)^(d-alpha))) space d mu (𝜉) \
& = (d - alpha + 1) integral _d(y)^infinity (mu(B(y,r)))/(r^(d-alpha+2)) space d r <= (d-alpha + 1) integral^infinity_d(y) (r^(d-alpha))/(r^(d-alpha+2)) space d r
$

== Subsection Heading <sec:2.1>
Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the LATEX automatism for all your cross-references and citations as has already been described in @sec:2.

#quote[
  Please do not use quotation marks when quoting texts! Simply use the `quote` environment -- it will automatically be rendered in line with the preferred layout.
]

=== Subsubsection Heading
Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the #LaTeX automatism for all your cross-references and citations as has already been described in @sec:2.1, see also 

Please note that the first line of text that follows a heading is not indented, whereas the first lines of all subsequent paragraphs are.#footnote[If you copy text passages, figures, or tables from other works, you must obtain _permission_ from the copyright holder (usually the original publisher). Please enclose the signed permission with the manuscript. The sources permission to print must be acknowledged either in the captions, as footnotes or in a separate section of the book.]

#let paragraph = heading.with(level: 4, numbering: none, outlined: false)
#show heading.where(level:4): set text(weight: 450)

#paragraph[Paragraph Heading]
Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the
#LaTeX automatism for all your cross-references and citations as has already been
described in @sec:2.

Please note that the first line of text that follows a heading is not indented, whereas the first lines of all subsequent paragraphs are.

For typesetting numbered lists we recommend to use the enumerate environment -- it will automatically rendered in line with the preferred layout.

#show enum: set block(spacing: 1.5em)

1. Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
  + Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
  + Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
2. Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.

#let subparagraph = heading.with(level: 5, numbering: none, outlined: false)
#show heading.where(level: 5): set text(weight: 450, style: "italic")

#subparagraph[Subparagraph Heading]
In order to avoid simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Use the LATEX automatism for all your cross-references and citations as has already been described in @sec:2, see
also Fig. 2.
For unnumbered list we recommend to use the itemize environment – it will automatically be rendered in line with the preferred layout.

#place(float: true, bottom, block(
  stroke: 1pt, height: 5cm, width: 100%
))

#show list: set block(spacing: 1.5em)

- Livelihood and survival mobility are oftentimes coutcomes of uneven socioeco-nomic development, cf. Table 1
  - Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
  - Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
- Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.