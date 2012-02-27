\version "2.12.0"

\header {
  title = "set of quatrads by {3,4} semitone intervals"
  subtitle = "(some of which are called 7ths)"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  <c e gis bis>1_"4 4 4"
  <c e gis b>1_"4 4 3"
  <c e g b>1_"4 3 4"
  <c e g bes>1_"4 3 3"
  <c ees g b>1_"3 4 4"
  <c ees g bes>1_"3 4 3"
  <c ees ges bes>1_"3 3 4"
  <c ees ges beses>1_"3 3 3"
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
