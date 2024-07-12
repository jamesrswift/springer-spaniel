#import "../src/lib.typ" as springer-spaniel
#import springer-spaniel.ctheorems: *
#import springer-spaniel.gentle-clues: *

#import "@preview/physica:0.9.3": *

#show: springer-spaniel.template(
  title: [Contribution Title],
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

#show "LaTeX": LaTeX

Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the LaTeX automatism for all your cross-references and citations.

Please note that the first line of text that follows a heading is not indented, whereas the first lines of all subsequent paragraphs are.

Use the standard `equation` environment to typeset your equations, e.g.

$
  a times b = c ,
$

however, for multiline equations we recommend to use the `eqnarray` environment.
#footnote[
  In physics texts please activate the class option `vecphys` to depict your vectors in #strong(emph[boldface-italic]) type - as is customary for a wide range of physical subjects
]

$
abs(gradient_alpha^mu (y)) & <= 1/(d - a) integral abs(gradient 1/( abs(𝜉 - y)^(d-alpha))) dd(mu (𝜉))
                          = integral 1 / (abs(𝜉 - y)^(d-alpha+1))  dd(mu (𝜉))\
                        & = (d - alpha + 1) limits(integral) _d(y)^infinity (mu(B(y,r)))/(r^(d-alpha+2)) dd(r)
                          <= (d-alpha + 1) limits(integral)^infinity_d(y) (r^(d-alpha))/(r^(d-alpha+2)) dd(r)
$

== Subsection Heading <sec:2.1>
Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the LaTeX automatism for all your cross-references and citations as has already been described in @sec:2.

#quote[
  Please do not use quotation marks when quoting texts! Simply use the `quote` environment -- it will automatically be rendered in line with the preferred layout.
]

=== Subsubsection Heading
Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the LaTeX automatism for all your cross-references and citations as has already been described in @sec:2.1, see also @fig:full.
#footnote[
  If you copy text passages, figures, or tables from other works, you must obtain _permission_ from the copyright holder (usually the original publisher). Please enclose the signed permission with the manuscript. The sources permission to print must be acknowledged either in the captions, as footnotes or in a separate section of the book.
]

Please note that the first line of text that follows a heading is not indented, whereas the first lines of all subsequent paragraphs are.

==== Paragraph Heading
Instead of simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Further on please use the
LaTeX automatism for all your cross-references and citations as has already been
described in @sec:2.

Please note that the first line of text that follows a heading is not indented, whereas the first lines of all subsequent paragraphs are.

For typesetting numbered lists we recommend to use the enumerate environment -- it will automatically rendered in line with the preferred layout.

+ Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
  + Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
  + Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
+ Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.

===== Subparagraph Heading
In order to avoid simply listing headings of different levels we recommend to let every heading be followed by at least a short passage of text. Use the LATEX automatism for all your cross-references and citations as has already been described in @sec:2, see
also Fig. 2.
For unnumbered list we recommend to use the itemize environment -- it will automatically be rendered in line with the preferred layout.

#figure(
  caption: [If the width of the figure is less than 7.8 cm use the `sidecaption` command to flush the cpation on the left side of the page. If the figure is positioned at the top of the page, align the subcaption to the top of the figure -- to achieve this, you simply need to use the optional argument [t] with the `sidecaption` command],
  block(stroke: 1pt, height: 5cm, width: 100%)
) <fig:full>

- Livelihood and survival mobility are oftentimes coutcomes of uneven socioeco-nomic development, cf. Table 1
  - Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
  - Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.
- Livelihood and survival mobility are oftentimes outcomes of uneven socioeconomic development.

#lorem(75) @einstein

#springer-spaniel.sidecaption(
  figure(
    caption: [If the width of the figure is less than 7.8 cm use the `sidecaption` command to flush the cpation on the left side of the page. If the figure is positioned at the top of the page, align the subcaption to the top of the figure -- to achieve this, you simply need to use the optional argument [t] with the `sidecaption` command],
    block(stroke: 1pt, height: 5cm, width: 100%)
  ),
  label: <fig:side>
)

#theorem("Euclid")[There are infinitely many primes.] <euclid>

#lemma[
 If $n$ divides both $x$ and $y$, it also divides $x - y$. @latexcompanion @knuthwebsite
]

#corollary[
  if $n$ divides two consecutive natural numbers, then $n = 1$.
]

#proof([of @euclid])[
  Suppose to the contrary that $p_1, p_2, dots, p_n$ is a finite enumeration of all primes. Set $P = p_1 p_2 dots p_n$. Since $P + 1$ is not in our list, it cannot be prime. Thus, some prime factor $p_j$ divides $P + 1$. Since $p_j$ also divides $P$, it must divide the difference $(P + 1) - P = 1$, a contradiction.
]

#lorem(50)

#lorem(50)

#lorem(75)

#info[Hello World]

#figure(
  caption: [Please write your table caption here],
  springer-spaniel.dining-table.make(
    columns: (
      (
        header: [Classes],
        key: "class",
        gutter: 0.5em,
      ),
      (
        header: [Subclass],
        key: "subclass",
        gutter: 0.5em,
      ),
      (
        header: [Length],
        key: "length",
        gutter: 0.5em,
      ),
      (
        header: [Action Mechanism],
        key: "mechanism",
        gutter: 0.5em,
        width: 1fr,
      ),
    ),
    data: (
      (
        class: [Translation],
        subclass: [mRNA] + springer-spaniel.dining-table.note.make[Table foot note (with suberscript)],
        length: [22 (19---25)],
        mechanism: [Translation repression, mRNA cleavage]
      ),
      (
        class: [Translation],
        subclass: [mRNA cleavage],
        length: [21],
        mechanism: [mRNA cleavage]
      ),
      (
        class: [Translation],
        subclass: [mRNA],
        length: [21---22],
        mechanism: [mRNA cleavage]
      ),
      (
        class: [Translation],
        subclass: [mRNA],
        length: [22---24],
        mechanism: [Histone and DNA modification]
      ),
    )
  )
)

#lorem(40)

#springer-spaniel.asterism.paragraph

#lorem(120)

#pagebreak()
#bibliography("sample.bib", style: "springer-mathphys")