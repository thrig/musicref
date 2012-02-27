% LilyPond engraving system - http://www.lilypond.org/
%
% Test of 7ths reducing down to nothing. Use organ or other instrument
% with sustains for ideal playback, and tie the held notes.

\version "2.12.0"

\header {
  title = "Reductio ad absurdum in 7ths"
}

upper = \relative c' {
  \set Staff.midiInstrument = #"Church Organ"
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4=116

  <c e g b>1_"MM"
  <c e g bes>_"Mm"
  <c ees g bes>_"mm"
  <c ees ges bes>_"dm"
  <c ees ges a>_"dd"

  % and now, more! (using same pattern as above)
  <c d ges a>
  <c d f a>
  <c d f aes>
  <c des f aes>
  <c des e aes>
  <c des e g>

  % ta-dah! 5ths!
  <c e g>
  <c ees g>

  % and beyond yet again
  <c ees ges>
  <c d ges>
  <c d f>
  <c des f>
  <c des e>
  <c e>
  <c ees>
  <c d>
  <c des>
  c~ c
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
