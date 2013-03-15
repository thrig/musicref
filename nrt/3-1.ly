% Neo-Riemannian examples.

\version "2.14.0"
\header {
  tagline = #f
}
\score {
  \new Staff << \relative e' {
     \cadenzaOn
     <c des eeses>2^"3-1 ideas"
     <b des eeses>
     \bar "|"
     <c des eeses>
     <c des ees>
     \bar "|"
     <c des eeses>
     <c c eeses>^"?"
     \bar "|"
     <c des eeses>
     <c eeses eeses>^"?"
     \bar "||"
  } >>
  \layout { }
  \midi { }
}
