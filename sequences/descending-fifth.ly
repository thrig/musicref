% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Descending Fifths Sequence (-5/+4)"
}

theKey = \relative c {
  <c c' g' e'>
  <f c'  a' f'>
}

theScale = \relative c' { c d e f g a b }

upper = {
  \clef bass
  \key c \major

  \repeat unfold 1 {
    \theKey
    \modalTranspose c b, \theScale \theKey
    \modalTranspose c a, \theScale \theKey
    \modalTranspose c g, \theScale \theKey
  }
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
