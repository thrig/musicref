% LilyPond engraving system - http://www.lilypond.org/
%
% Maqam scales, typed up from https://en.wikipedia.org/wiki/Arabic_maqam

\version "2.12.0"

\header {
  title = "Shad `Araban"
}

theScale = \relative g' {
  g aes b c
}

upper = {
  \clef treble
  \key c \major
  \tempo 4=192

  \theScale
  \transpose g d' { \theScale }
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}

