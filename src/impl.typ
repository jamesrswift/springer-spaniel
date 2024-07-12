
#import "package/ctheorems.typ": thmrules
#import "package/gentle-clues.typ": gentle-clues

#let template(
  title: [Contribution Title],
  authors: (),
  abstract: none
) = (body) => {
  // --------------------------------------------------------------------------
  // Text
  set text(size: 9pt, weight: 450)
  set block(spacing: 1em)
  set par(justify: true, first-line-indent: 1.5em)
  show par: set block(spacing: 0.65em)

  // --------------------------------------------------------------------------
  // Page
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
  
  // --------------------------------------------------------------------------
  // Headings
  set heading(numbering: "1.1", offset: 0)
  show heading: set block(above: 3em, spacing: 1.5em)
  show heading.where(level: 4): set block(above: 1.5em, below: 1em)
  show heading.where(level:4): set text(weight: 450)
  show heading.where(level: 4): set heading(numbering: none, outlined: false)
  show heading.where(level: 5): set block(above: 1.5em, below: 1em)
  show heading.where(level: 5): set text(weight: 450, style: "italic")
  show heading.where(level: 5): set heading(numbering: none, outlined: false)
  set heading(supplement: [Sect.])

  // --------------------------------------------------------------------------
  // Mathematics
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 1.5em)

  // --------------------------------------------------------------------------
  // Footnotes
  set footnote.entry(
    indent: 0em, 
    separator: line(length: 25%, stroke: 0.75pt), 
    gap: 0.65em
  )
  show footnote.entry: set text(7.25pt)

  // --------------------------------------------------------------------------
  // Supplements
  set figure(supplement: [Fig.])

  // --------------------------------------------------------------------------
  // Lists
  show enum: set block(spacing: 1.5em)
  show list: set block(spacing: 1.5em)

  // --------------------------------------------------------------------------
  // Bibliography
  set bibliography(style: "springer-mathphys")
  show bibliography: set par(first-line-indent: 0em)
  show bibliography: set block(spacing: 1em)
  show bibliography: it=> {
    show heading: set block(above: 3em, below: 1.5em)
    it
  }

  // --------------------------------------------------------------------------
  // Packages
  show: thmrules
  show: gentle-clues

  // --------------------------------------------------------------------------
  // Title
  v(2cm)
  { 
    set text(weight: "black", size: 16pt)
    block(title)
  }
  v(0.5cm)
  {
    block(text(authors.map(it=>it.name).join(", ", last: " and ")))
  }
  v(4cm)
  if (abstract != none){
    strong[Abstract]
    abstract
  }

  // --------------------------------------------------------------------------
  // Main body
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
  // --------------------------------------------------------------------------

}
