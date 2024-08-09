#import "/tests/preamble.typ": *
#import springer-spaniel.drafting: *

#show: springer-spaniel.template(
  title: [Towards Swifter Interstellar Mail Delivery] + 
    margin-note(text(size:9pt, weight: 450,[We need a better title than this])),
  authors: (
    (
      name: [Joana Swift] + margin-note(side: left)[Do we like this person?],
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
  abstract: lorem(75) + inline-note(par-break: false)[I'm not so sure about this],
)