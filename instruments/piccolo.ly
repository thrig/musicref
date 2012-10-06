% LilyPond engraving system - http://www.lilypond.org/
%
% Instrument range and notation example.

\version "2.16.0"
\include "articulate.ly"

keytempoetc = {
  \key c \major
  \time 4/4
  \tempo 4=96
}

piccolo = \relative d' {
  \keytempoetc
  % Notated d' to c''' (absolute) but plays an octave higher than that.
  \transposition c''
  d16( e f g a b c d e f g a b c d e f g a b) c c-. c-. c-. c4
}

theblackdots = {
  <<
    \new Staff <<
      << \piccolo >>
    >>
  >>
}

themusic = {
  <<
    \new Staff <<
      \set Staff.midiInstrument = #"piccolo"
      << \piccolo >>
    >>
  >>
}

\score {
  \theblackdots
  \layout { }
}
\score {
  \articulate { \themusic }
  \midi { }
}
