\version "2.12.0"

sopOne = \relative e'' {
  e1 e d d c
}

sopTwo = \relative g' {
  c1 c c b c
}

alto = \relative g' {
  g1 a a g g
}

tenor = \relative g' {
  g1 g f f e
}

bass = \relative c {
  c1 a d g, c
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
      << \tenor >>
    >>
    \new Staff <<
      \clef bass
      << \bass >>
    >>
  >>
  \layout { }
  \midi { }
}
