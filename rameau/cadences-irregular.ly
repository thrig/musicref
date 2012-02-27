\version "2.13.0"

sop = \relative c'' {
  e2 d e1 \partial 2 d2~ d e d1
}

alto = \relative c'' {
  c1~ c \partial 2 b2 c1 b
}

bass = \relative c' {
  c2 f, c1 \partial 2 g'2 f c g'1
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
