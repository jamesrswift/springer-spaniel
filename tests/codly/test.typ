#import "/tests/preamble.typ": *
#import springer-spaniel.codly

#show: springer-spaniel.template(
  title: [Towards Swifter Interstellar Mail Delivery],
  authors: (
    (
      name: [Joana Swift],
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
  abstract: none,
)

#codly.codly(
  languages: (
    rust: (name: "Rust", icon: [], color: rgb("#CE412B")),
    python: (name: "Python", icon: [], color: rgb("#3572A5")),
    typ: (name: "Typst", icon: [], color: rgb("#3572A5")),
    typc: (name: "Typst", icon: [], color: rgb("#3572A5")),
  )
)

#lorem(10)

```rust
pub fn main() {
    println!("Hello, world!");
}
```

#lorem(20)

```python
def fibonaci(n):
    if n <= 1:
        return n
    else:
        return(fibonaci(n-1) + fibonaci(n-2))
```

#pagebreak()

```typ
#codly.codly(languages: (
  rust: (name: "Rust", icon: [], color: rgb("#CE412B")),
  python: (name: "Python", icon: [], color: rgb("#3572A5")),
  typst: (name: "Typst", icon: [], color: rgb("#3572A5")),
))
```


```typc
codly.codly(languages: (
  rust: (name: "Rust", icon: [], color: rgb("#CE412B")),
  python: (name: "Python", icon: [], color: rgb("#3572A5")),
  typst: (name: "Typst", icon: [], color: rgb("#3572A5")),
))
```