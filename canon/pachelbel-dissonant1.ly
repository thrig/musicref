% LilyPond engraving system - http://www.lilypond.org/
%
% http://en.wikipedia.org/wiki/Pachelbel%27s_Canon
%
% Least consonant:
%
%   % canon-offset-audit --ostinato -- 0 -5 -3 -8 -7 -12 -7 -5 \
%   | sort -n | tail -6
%   0.706 O1,T6		Min(0.200) Max(1.000) Mean(0.706) SDev(0.321)
%   0.707 O4,T-18	Min(0.205) Max(0.980) Mean(0.707) SDev(0.298)
%   0.707 O4,T18	Min(0.205) Max(0.980) Mean(0.707) SDev(0.298)
%   0.712 O2,T-2	Min(0.250) Max(1.000) Mean(0.712) SDev(0.279)
%   0.742 O4,T-6	Min(0.225) Max(1.000) Mean(0.742) SDev(0.308)
%   0.742 O4,T6		Min(0.225) Max(1.000) Mean(0.742) SDev(0.308)

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
% Tritone at an offset of four most dissonant. And how! Much better if
% dissonant line moved up an octave (transpose d gis'); at distance,
% likely to be heard as two different and less related lines, especially
% if different timbres involved or an inverse risposta used (verging
% into polytonality space).
  R1
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
