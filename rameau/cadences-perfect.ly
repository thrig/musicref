\version "2.13.0"

sop = \relative g'' {
  \partial 2 g2~ g f~ f1 e e2 f e1
}

alto = \relative g'' {
  \partial 2 e2 a1 g g g~ g
}

bass = \relative c' {
  \partial 2 c2 a d, g1 c, c'2 g c,1
}

\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \tempo 4=120
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \sop >>
      << \alto >>
    >>
    \new Staff <<
      \clef bass
      << \bass >>
    >>
  >>
  \layout { }
  \midi { }
}
