% Neo-Riemannian examples.

\version "2.14.0"
\header {
  tagline = #f
}
\score {
  \new Staff << \relative e' {
     \cadenzaOn
     <c e g>2^"R x 3"
     <c e a>
     <c e g>
     <c e a>
     \bar "||"
  } >>
  \layout { }
  \midi { }
}
