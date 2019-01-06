% LilyPond engraving system - http://www.lilypond.org/

\version "2.18.2"
\include "articulate.ly"

% or so claims "A Treatise on Simple Counterpoint in Forty Lessons"
\header {
  title = "ok outlined tritone"
  tagline = #f
}

tempoandetc = {
  \set Score.tempoHideNote = ##t
  \accidentalStyle "neo-modern"
  \tempo 4=96
  \key c \major
}

sopa = \relative a' {
  \partial 4 c8 b
  b4 a2 c8 b c4
}

altoa = \relative f' {
  \partial 4 g8 d
  f4 c r4 e8 d
  e4
}

tenora = \relative c' {
  \partial 4 g4
  a2 r4 c4~ c
}

bassa = \relative c {
  \partial 4 c8 g'
  % the skip here is claimed to make the exposed tritone less bad
  d4_"vii˚" f2_"IV" g4 c,4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% MIDI

msop = \new Voice {
  \tempoandetc 
% \set Staff.midiInstrument = #"violin"
  \sopa
}

malto = \new Voice {
  \tempoandetc 
% \set Staff.midiInstrument = #"violin"
  \altoa
}

mtenor = {
  \tempoandetc 
% \set Staff.midiInstrument = #"viola"
  \tenora
}

mbass = {
  \tempoandetc 
% \set Staff.midiInstrument = #"cello"
  \bassa
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% SCORE

ssop = \new Voice {
  \tempoandetc 
  \sopa
  \bar "|."
}

salto = \new Voice {
  \tempoandetc 
  \altoa
  \bar "|."
}

stenor = {
  \tempoandetc 
  \tenora
  \bar "|."
}

sbass = {
  \tempoandetc 
  \bassa
  \bar "|."
}

thescore = {
  \new StaffGroup <<
    \new Staff << \clef sop \ssop >>
    \new Staff << \clef sop \salto >>
    \new Staff << \clef alto \stenor >>
    \new Staff << \clef bass \sbass >>
  >>
}

themidi = {
  <<
    \set Score.midiChannelMapping = #'staff
    \new Staff = "soprano" \msop
    \new Staff = "alto" \malto
    \new Staff = "tenor" \mtenor
    \new Staff = "bass" \mbass
  >>
}

\score {
  \thescore
  \layout { }
}

\score {
  \articulate { \themidi }
  \midi { }
}
