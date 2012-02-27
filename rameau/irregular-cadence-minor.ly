\version "2.13.0"

sop = \relative c'' {
  c1 c
}

alto = \relative g' {
  aes1 g
}

tenor = \relative c' {
  d1 ees
}

bass = \relative b, {
  f1 c'
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
