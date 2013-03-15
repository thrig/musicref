% Neo-Riemannian examples.

\version "2.14.0"
\header {
  tagline = #f
}
\score {
  \new Staff << \relative e' {
     \cadenzaOn
     <c e g>2^"L x 2"
     <b e g>
     <c e g>
     \bar "||"
  } >>
  \layout { }
  \midi { }
}
