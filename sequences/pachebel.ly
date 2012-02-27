% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Descending 5-6 Sequence (-4/+2)"
}

theKey = \relative c {
  <c c' g' e'>
  <g b' g' d'>
}

theScale = \relative c' { c d e f g a b }

upper = {
  \clef bass
  \key c \major

  \repeat unfold 1 {
    \theKey
    \modalTranspose c a, \theScale \theKey
    \modalTranspose c f, \theScale \theKey
    \modalTranspose c d, \theScale \theKey
  }
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
