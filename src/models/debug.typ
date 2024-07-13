#let frame(stroke: 0.1pt) = place(rect(width: 100%, height: 100%, stroke: stroke))

#let horizontal-frames = {
  place(dy: 5cm, rect(width: 4.5cm, height: 100% - 11.25cm, stroke: 0.1pt))
  place(dy: 5cm, right, rect(width: 4.5cm, height: 100% - 11.25cm, stroke: 0.1pt))
  place(dy: 5cm, dx: 5cm, rect(width: 100%-10cm, height: 100% - 11.25cm, stroke: 0.1pt))
}

#import "@preview/chromo:0.1.0": square-printer-test, gradient-printer-test, circular-printer-test, crosshair-printer-test

#let printer-test = {
  place(right, pad(1cm,square-printer-test(size: 1em)))
  place(left , pad(1cm,gradient-printer-test()))

  place(right+bottom, pad(1cm,circular-printer-test(size: 2cm)))
  place(left+bottom , pad(1cm,crosshair-printer-test()))
}