% LilyPond engraving system - http://www.lilypond.org/
%
% Inversions of standard 7ths

\version "2.12.0"

\header {
  title = "7th Inversions"
}

upper = \relative c {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4=116

  <c e g b>1_"MM"
  r
  <e g b c>
  r
  <g b c e>
  r
  <b c e g>
  r
  <c e g b>
  r
  r
  <c, e g bes>_"Mm"
  r
  <e g bes c>
  r
  <g bes c e>
  r
  <bes c e g>
  r
  <c e g bes>
  r
  r
  <c, ees g bes>_"mm"
  r
  <ees g bes c>
  r
  <g bes c ees>
  r
  <bes c ees g>
  r
  <c ees g bes>
  r
  r
  <c, ees ges bes>_"dm"
  r
  <ees ges bes c>
  r
  <ges bes c ees>
  r
  <bes c ees ges>
  r
  <c ees ges bes>
  r
  r
  <c, ees ges a>_"dd"
  r
  <ees ges a c>
  r
  <ges a c ees>
  r
  <a c ees ges>
  r
  <c ees ges a>
  r
  r
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
