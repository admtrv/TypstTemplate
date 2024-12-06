
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 0pt,
  width: 100%,
)

#set heading(numbering: "1.")

#show outline.entry.where(
  level: 1
): it => {
  v(14pt, weak: true)
  strong(it)
}

#align(center + horizon, text(16pt)[
  * Project Title * \
  * Paper Type * \
])

#align(center + horizon, text(12pt)[
  * First Name and Second Name \ *
  * Faculty Name \ *
  * University Name \ *
  ` University Email ` 
])

#pagebreak()

#outline(indent: auto)

#pagebreak()

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  numbering: "1",
)

#counter(page).update(1)

= Introduction

This is ready-to-use template for creating scientific university papers using the *Typst* language. It is designed to help students, researchers, and professionals format their work with ease, following clean and structured base.

= Examples

== Image

This section demonstrates how to include an image with citation in the document. The image is inserted from `'image.jpg'` and can be referenced using @image.

#align(center + horizon)[]
  #figure(
    image("image.jpg", width: 60%), 
    caption: [Image Example],
  ) <image>

== Table

Tables allow for clear and concise data presentation. The example below demonstrates a four-column table, which can be referenced using @table.

#align(center + horizon)[]
  #figure(
    table(
      columns: 4,
      [x], [1], [2], [3],
        [y], [5], [10], [15],
    ),
    caption: [Table Example],
  ) <table>

== Code Block

For technical papers, including code snippets is often necessary. The example below shows how to include a code block, which can be referenced using @code.

#figure(
    ```cpp
    #include <iostream>

    int main()
    {
        std::cout << "Hello Template!" << std::endl;
        return 0;
    }
    ```,
    caption: [Code Example],
  ) <code>

== Mathematical Equations
This section demonstrates how to include mathematical equations. For example, the formula for the area of a circle can be written as shown below and referenced using @equation.

#align(center + horizon)[]
  #figure(
    $ A = pi r^2 $,
    caption: [Equation Example],
  ) <equation>
  
== Bibliography

The template includes support for adding a bibliography. References are managed using @tanenbaum and. It is included from the `'bibliography.bib'` file.

#bibliography("bibliography.bib", full: true)