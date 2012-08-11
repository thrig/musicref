% Different forms of what could be called "I" chords.

\version "2.12.0"

\header {
  title = "I, Roman"
}

sop = \relative e' {
  c1
  e1
  g1
  c1
  s1
  \bar "||"
  g'4. f8 e2

  \bar "|."
}

alto = \relative c' {
  g1
  c1
  e1
  g1
  s2 e8 g c e
  \bar "||"
  d2 c
  \bar "|."
}

tenor = \relative g {
  e1
  g1
  g1
  e'1
  r8 e, g c s2
  \bar "||"
  b2 c
  \bar "|."
}

bass = \relative c {
  c1_"I"
  c1_"I"
  c1_"I"
  c1_"I"
  c1_"I"
  \bar "||"
  g'2_"V" c,2_"I"
  \bar "|."
}

upper = {
  \clef treble
  \set Staff.printPartCombineTexts = ##f
  \partcombine
  << \sop    >>
  << \alto   >>
}

lower = {
  \clef bass
  \set Staff.printPartCombineTexts = ##f
  \partcombine
  << \tenor >>
  << \bass >>
}

themusic = {
<<
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
>>
}

\score {
  \themusic
  \layout { }
}

\score {
  \themusic
  \midi { }
}
