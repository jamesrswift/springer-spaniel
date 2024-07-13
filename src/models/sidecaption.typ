
#let sidecaption(body, direction: ltr, label: none) = {
  show figure: (it)=>{
    stack(
      spacing: 1em,
      dir: direction,
      block(width: 33% - 0.5em, it.caption), 
      block(width: 67% - 0.5em, it.body)
    )
  }
  place(float: true, auto, [#body#label])
}