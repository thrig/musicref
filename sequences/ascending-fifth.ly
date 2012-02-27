% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Ascending Fifths Sequence (+5/-4)"
}

theKey = \relative c {
  <c c' g' e'>
  <g' b g' d'>
}

theScale = \relative c' { c d e f g a b }

upper = {
  \clef bass
  \key c \major

  \repeat unfold 1 {
    \theKey
    \modalTranspose c d \theScale \theKey
    \modalTranspose c e \theScale \theKey
    % This seems to go on too long, probably why TCM breaks into iii IV
    % V7 I as hits the e
    \modalTranspose c f \theScale \theKey
  }
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
