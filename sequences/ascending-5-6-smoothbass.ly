% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Ascending 5-6 Sequence (-3/+4) via inversion"
}

theKey = \relative c {
  <c c' e g>
  <c a' e' a>
}

theScale = \relative c' { c d e f g a b }

upper = {
  \clef bass
  \key c \major

  \repeat unfold 1 {
    \theKey
    \modalTranspose c d \theScale \theKey
    \modalTranspose c e \theScale \theKey
    \modalTranspose c f \theScale \theKey
  }
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
