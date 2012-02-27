\version "2.13.0"

sopOne = \relative g'' {
  g1 g
}

sopTwo = \relative g'' {
  f1 e
}

alto = \relative g' {
  b1 c
}

tenor = \relative c' {
  d1 c
}

bass = \relative g {
  g1 c,
}

\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \tempo 4=120
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \sopOne >>
      << \sopTwo >>
      << \alto >>
    >>
    \new Staff <<
      \clef bass
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \tenor >>
      << \bass >>
    >>
  >>
  \layout { }
  \midi { }
}
