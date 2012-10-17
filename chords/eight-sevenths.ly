\version "2.12.0"

\header {
% title = "set of quatrads by {3,4} semitone intervals"
% subtitle = "(some of which are called 7ths)"
}

\paper {
  #(set-paper-size "a6")
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1000)

  <c e gis bis>1
    _\markup { \halign #-1 \center-column { \line { "4 4 4" } } }

  <c e gis b>1
    _\markup { \halign #-1 \center-column { \line { "4 4 3" } } }

  <c e g b>1
    _\markup { \halign #-1 \center-column { \line { "4 3 4" } \line { "MM7" } \line { \concat { "I" \super "7" } } } }

  <c e g bes>1
    _\markup { \halign #-1 \center-column { \line { "4 3 3" } \line { "Mm7" } \line { \concat { "I" \super "7" } } } }

  <c ees g b>1
    _\markup { \halign #-1 \center-column { \line { "3 4 4" } } }

  <c ees g bes>1
    _\markup { \halign #-1 \center-column { \line { "3 4 3" } \line { "mm7" } \line { \concat { "i" \super "7" } } } }

  <c ees ges bes>1
    _\markup { \halign #-1 \center-column { \line { "3 3 4" } \line { "dm7" } \line { \concat { "i" \super { #(ly:export (ly:wide-char->utf-8 #x00f8))"7" } } } } }

  <c ees ges beses>1
    _\markup { \halign #-1 \center-column { \line { "3 3 3" } \line { "dd7" } \line { \concat { "i" \super "o7" } } } }
}
\score {
  <<
    \override Score.SystemStartBar #'collapse-height = #1
    \new Staff \upper
  >>
  \layout { indent = #0 }
  \midi { }
}
