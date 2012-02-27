\version "2.13.0"

sop = \relative c' {
  c1 a2 b c1 e1 f2~ f e1
}

alto = \relative c {
  e1 f2~f e1 c' a2 b c1
}

tenor = \relative c {
  a1 d1 c1 a1 d1 c1
}

bass = \relative c {
  a1 d2 g,2 c1 a1 d,2 g c,1
}

\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \tempo 4=120
%     \set Staff.printPartCombineTexts = ##f
%     \partcombine
      << \sop >>
    >>
    \new Staff <<
      \clef bass
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \alto >>
      << \tenor >>
      << \bass >>
    >>
  >>
  \layout { }
  \midi { }
}
