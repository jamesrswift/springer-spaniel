#import "../../src/lib.typ" as springer-spaniel
#import springer-spaniel.board-n-pieces: *

#show: springer-spaniel.template(
  title: [Towards Swifter Interstellar Mail Delivery],
  authors: (
    (
      name: "Joana Swift",
      institute: "Primary Logistics Departmen",
      address: "Delivery Institute, Berlin, Germany",
      email: "stegonaris@space.it"
    ),
    (
      name: "Egon Stellaris",
      institute: "Communications Group",
      address: "Space Institute, Florence, Italy",
      email: "stegonaris@space.it"
    ),
    (
      name: "Oliver Liam",
      institute: "Missing Letters Task Force",
      address: "Mail Institute, Budapest, Hungary",
      email: "liver.liam@mail.hu"
    )
  ),
  abstract: lorem(75),
)


#pagebreak()

= Board 'n pieces
This section tests the template styling of the supported `board-n-pieces` package, as shown below; #lorem(50)

#springer-spaniel.sidecaption(
  caption-width: 50%,
  caption-padding: (top: 1.25em),
  figure(
    caption: lorem(50),
    board(
      fen("r4rk1/pp2Bpbp/1qp3p1/8/2BP2b1/Q1n2N2/P4PPP/3RK2R"),
      highlighted-squares: "c7 c6 h6",
      arrows: ("d8 c8", "d8 c7", "g1 g6", "h7 h6"),
    )
  )
)
