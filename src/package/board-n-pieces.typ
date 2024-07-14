#import "@preview/board-n-pieces:0.4.0": *

#let piece(body) = layout((lyt)=>text(size: lyt.height * 0.75, body))

#let old-board = board;
#let board(highlight: red.lighten(50%),..args) = old-board(
  white-square-fill: white, 
  highlighted-white-square-fill: highlight,

  black-square-fill: white.darken(50%),
  highlighted-black-square-fill: highlight.darken(50%),

  arrow-stroke: .175em + highlight.saturate(50%),

  stroke: 0.5pt,
  display-numbers: true, 
  square-size: 2em,
  pieces: (
    P: piece[♙],
    N: piece[♘],
    B: piece[♗],
    R: piece[♖],
    Q: piece[♕],
    K: piece[♔],
    p: piece[♟︎],
    n: piece[♞],
    b: piece[♝],
    r: piece[♜],
    q: piece[♛],
    k: piece[♚],
  ),
  ..args
)