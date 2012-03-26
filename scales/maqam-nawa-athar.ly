% LilyPond engraving system - http://www.lilypond.org/
%
% Maqam scales, typed up from https://en.wikipedia.org/wiki/Arabic_maqam

\version "2.12.0"

\header {
  title = "Nawa Athar"
}

theScale = \relative c' {
  c d ees fis g aes b c
}

upper = {
  \clef treble
  \key c \major
  \tempo 4=192

  \theScale
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}

