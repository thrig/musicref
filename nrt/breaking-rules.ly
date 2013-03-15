% Neo-Riemannian examples.

\version "2.14.0"
\header {
  tagline = #f
}
\score {
  \new Staff << \relative e' {
     \cadenzaOn
     <c e g>
     <d e g>^"III2?"
     \bar "|"
     <c e g>
     <c e f>^"IV43?"
     \bar "||"
  } >>
  \layout { }
  \midi { }
}
