% LilyPond engraving system - http://www.lilypond.org/
%
% http://en.wikipedia.org/wiki/Pachelbel%27s_Canon
%
% Most consonant:
%
%   % canon-offset-audit --ostinato -- 0 -5 -3 -8 -7 -12 -7 -5 \
%   | sort -n | head -6
%   0.131 O2,T0		Min(0.000) Max(0.225) Mean(0.131) SDev(0.089)
%   0.151 O2,T-12	Min(0.000) Max(0.275) Mean(0.151) SDev(0.115)
%   0.156 O4,T0		Min(0.100) Max(0.225) Mean(0.156) SDev(0.057)
%   0.184 O1,T-14	Min(0.080) Max(0.250) Mean(0.184) SDev(0.066)
%   0.188 O1,T-2	Min(0.100) Max(0.225) Mean(0.188) SDev(0.052)
%   0.191 O2,T16	Min(0.080) Max(0.255) Mean(0.191) SDev(0.071)

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
  \clef bass
  \keytempoetc
% So going with Offset 2, Transpose 0 for most consonant, which is that,
% besides the awkward unisons (that using two different instruments
% would avoid).
  r2
  \transpose d d { \groundbass }
  \transpose d d { \groundbass }
  \transpose d d { \groundbass }
  \transpose d d { \groundbass }
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
