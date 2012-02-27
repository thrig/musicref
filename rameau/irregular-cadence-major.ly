\version "2.13.0"

sop = \relative c'' {
  d1 e
}

alto = \relative c'' {
  c1 c
}

tenor = \relative g' {
  a1 g
}

bass = \relative c {
  f1 c
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
      << \tenor >>
    >>
    \new Staff <<
      \clef bass
%     \set Staff.printPartCombineTexts = ##f
%     \partcombine
      << \bass >>
    >>
  >>
  \layout { }
  \midi { }
}
