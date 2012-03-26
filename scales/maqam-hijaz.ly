% LilyPond engraving system - http://www.lilypond.org/
%
% Maqam scales, typed up from https://en.wikipedia.org/wiki/Arabic_maqam

\version "2.12.0"

\header {
  title = "Hijaz"
}

theScale = \relative d' {
  d ees fis g a bes c d
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

