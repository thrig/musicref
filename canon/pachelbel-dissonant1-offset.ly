% LilyPond engraving system - http://www.lilypond.org/
%
% http://en.wikipedia.org/wiki/Pachelbel%27s_Canon

\version "2.16.0"
\include "articulate.ly"

keytempoetc = {
  \key d \major
  \time 4/4
  \tempo 4=60
}

groundbass = \relative d' {
  d8~ d a~ a b~ b fis~ fis g~ g d~ d g~ g a~ a
}

upper = \relative d' {
  \clef treble
  \keytempoetc
% A slight offset removes the harsh verticals, creates some interesting
% interactions around where the lines cross. (Offering a method to
% perhaps find interesting melodic material.)
  R1 r8
  \transpose d gis { \groundbass }
  \transpose d gis { \groundbass }
  \transpose d gis { \groundbass }
  \transpose d gis { \groundbass }
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
