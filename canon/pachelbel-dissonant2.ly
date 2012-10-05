% LilyPond engraving system - http://www.lilypond.org/
%
% http://en.wikipedia.org/wiki/Pachelbel%27s_Canon
%
% Somewhat dissonant (least 0.131, most 0.742):
%
%  0.510 O2,T14	Min(0.100) Max(0.780) Mean(0.510) SDev(0.253)

\version "2.16.0"
\include "articulate.ly"

keytempoetc = {
  \key d \major
  \time 4/4
  \tempo 4=60
}

groundbass = \relative d' {
  d4 a b fis g d g a
}

upper = \relative d' {
  \clef treble
  \keytempoetc
% Offset 2, Transpose 14 semitones - curious! Do need ability to
% generate lilypond or MIDI output, as might be interesting things not
% revealed by the statistics.
  r2
  \transpose d e' { \groundbass }
  \transpose d e' { \groundbass }
  \transpose d e' { \groundbass }
  \transpose d e' { \groundbass }
  \bar "|."
}

lower = \relative d' {
  \clef bass
  \keytempoetc
  \groundbass
  \groundbass
  \groundbass
  \groundbass
  \bar "|."
}

theblackdots = {
  <<
    \new StaffGroup <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
}

themusic = {
  <<
    \new Staff <<
%     \set Staff.midiInstrument = #"church organ"
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \upper >>
      << \lower >>
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
