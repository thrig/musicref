% Neo-Riemannian examples.

\version "2.14.0"
\header {
  tagline = #f
}
\score {
  \new Staff << \relative e' {
     \cadenzaOn
     <c e g>2^"P x 5" <c ees g> <c e g> <c ees g> <c e g> <c ees g> \bar "||"
  } >>
  \layout { }
  \midi { }
}
