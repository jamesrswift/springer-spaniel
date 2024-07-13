#import "../../src/lib.typ" as springer-spaniel

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
  printer-test: true,
)