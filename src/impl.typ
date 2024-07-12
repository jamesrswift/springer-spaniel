
#let template(
  title: [Contribution Title],
  authors: (),
  abstract: none
) = (body) => {
  set text(size: 9pt, weight: 450)
  set block(spacing: 0.65em)
  set par(justify: true, first-line-indent: 1.5em)

  set page(margin: (x:5cm, top:5cm, bottom: 6.25cm))
  set page(header-ascent: 1.5em)
  set page(header: context{
    set text(size: 7pt)
    if here().page() > 1 {
      if (calc.even(here().page())){
        text[#here().page()]
        h(1fr)
        authors.map(it=>it.name).join(", ", last: " and ")
      } else {
        text(title)
        h(1fr)
        text[#here().page()]
      }
    }
  })
  
  set heading(numbering: "1.1", offset: 0)
  show heading: set block(above: 3em, spacing: 1.5em)
  show heading.where(level: 4): set block(above: 1.5em, below: 1em)
  show heading.where(level: 5): set block(above: 1.5em, below: 1em)
  set heading(supplement: [Sect.])

  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 1.5em)

  set footnote.entry(indent: 0em, separator: line(length: 25%, stroke: 0.75pt), gap: 0.65em)
  show footnote.entry: set text(7.25pt)

  set figure(supplement: [Fig.])

  v(2cm)

  // Title
  { 
    set text(weight: "black", size: 16pt)
    block(title)
  }

  v(0.5cm)

  // Authors
  {
    block(text(authors.map(it=>it.name).join(", ", last: " and ")))
  }

  v(4cm)

  if (abstract != none){
    strong[Abstract]
    abstract
  }

  place(
  float: true,
  bottom,
  {
    set text(size: 7.5pt)
    set par(first-line-indent: 0em)
    line(length: 25%, stroke: 0.75pt)
    set block(below: 1.5em)

    authors.map(
      (it)=>{
        it.name
        linebreak()
        [#it.institute, #it.address, email: #raw(lang: none, it.email)]
      }
    ).join(parbreak())
  }
)

  body
}
