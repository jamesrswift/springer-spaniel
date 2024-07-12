# The `springer-spaniel` Package
<div align="center">Version 0.1.0</div>

This is an loose recreation of the _Springer Contributed Chapter_ LaTeX template on Overleaf. It aims to provide template-level support for commonly used packages so you don't have to choose between style and features. 

## Media

<p align="center">
  <img alt="Light" src="./thumbnails/1.png" width="32%">
  <img alt="Dark" src="./thumbnails/2.png" width="32%">
  <img alt="Light" src="./thumbnails/3.png" width="32%">
</p>


## Template adaptation checklist

- [ ] Fill out `README.md`
  - Change the `my-package` package name, including code snippets
  - Check section contents and/or delete sections that don't apply
- [ ] Check and/or replace `LICENSE` by something that suits your needs
- [ ] Fill out `typst.toml`
  - See also the [typst/packages README](https://github.com/typst/packages/?tab=readme-ov-file#package-format)
- [ ] Adapt Repository URLs in `CHANGELOG.md`
  - Consider only committing that file with your first release, or removing the "Initial Release" part in the beginning
- [ ] Adapt or deactivate the release workflow in `.github/workflows/release.yml`
  - to deactivate it, delete that file or remove/comment out lines 2-4 (`on:` and following)
  - to use the workflow
    - [ ] check the values under `env:`, particularly `REGISTRY_REPO`
    - [ ] if you don't have one, [create a fine-grained personal access token](https://github.com/settings/tokens?type=beta) with [only Contents permission](https://stackoverflow.com/a/75116350/371191) for the `REGISTRY_REPO`
    - [ ] on this repo, create a secret `REGISTRY_TOKEN` (at `https://github.com/[user]/[repo]/settings/secrets/actions`) that contains the so created token

    if configured correctly, whenever you create a tag `v...`, your package will be pushed onto a branch on the `REGISTRY_REPO`, from which you can then create a pull request against [typst/packages](https://github.com/typst/packages/)
- [ ] remove/replace the example test case
- [ ] (add your actual code, docs and tests)
- [ ] remove this section from the README

## Getting Started

These instructions will get you a copy of the project up and running on the typst web app. Perhaps a short code example on importing the package and a very simple teaser usage.

```typ
#import "@preview/springer-spaniel:0.1.0"
#import springer-spaniel.ctheorems: * // provides "proof", "theorem", "lemma"

#show: springer-spaniel.template(
  title: [Contribution Title],
  authors: (
    (
      name: "Name of First Author",
      institute: "Name",
      address: "Address of Institute",
      email: "name@email.address"
    ),
    // ... and so on
  ),
  abstract: lorem(75),

  // debug: true, // Highlights structural elements and links
  // frame: 1pt, // A border around the page for white on white display
  // printer-test: true, // Suitably placed CMYK printer tests
)

= Section Heading
== Subsection Heading
=== Subsubsection Heading
==== Paragraph Heading
===== Subparagraph Heading
```

### Local Installation

To install this project locally, follow the steps below;
+ Install Just
+ Clone repository
+ In a bash compatible shell, `just install-preview`
