\version "2.14.0"

\include "articulate.ly"

\header {
  title = "Authentic Cadences"
  subtitle = "(Harmonic Functions in Chromatic Music)"
  subsubtitle = "((Daniel Harrison))"
}

tempoandetc = {
  \time 4/4
  \tempo 4=144
  \key c \major
}

sop = \relative a' {
  \tempoandetc 
  b c r
  c c r
  ees e r
  ees e r
  e e r
  f e
  \bar "||"
}

alto = \relative a' {
  \tempoandetc 
  g g r
  a g r
  bes c r
  <aes ces> c r
  <aes c> c r
  <g c> <g c>
}

tenor = \relative d' {
  \tempoandetc 
  d e r 
  f e r
  g g r
  f g r
  ges g r
  d e
}

bass = {
  \tempoandetc 
  \relative g { g c, r }
  \relative g { g c, r }
  \relative g { g c, r }
  \relative g { g c, r }
  \relative g { g c, r }
  \relative g { g c, }
  \bar "||"
}

upper = {
  \clef treble
  \set Staff.printPartCombineTexts = ##f
  \partcombine
  << \sop    >>
  << \alto   >>
}

lower = {
  \clef treble
% \set Staff.printPartCombineTexts = ##f
% \partcombine
  << \tenor >>
}

themusic = {
<<
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = #"electric piano 1"
    \set Score.midiChannelMapping = #'instrument
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \new Staff = "pedal" <<
    \set Staff.midiInstrument = #"electric piano 1"
    \clef bass
    \bass
  >>
>>
}

\score {
  \themusic
  \layout { }
}

\score {
  \articulate { \themusic }
  \midi { }
}
