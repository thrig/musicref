% Bass forms the beat (duple), tenor a triple layer on top of that
% (pulses), and the taps would be for ornament. (Derived from "Dance and
% the Music of J.S. Bach" by Meredith Little and Natalie Jenne.)
%
% "L'aimable Vainqueur" sheet music of sorts can be found online for the
% form reputedly favored by the Sun King.

\version "2.12.0"

tempoetc = {
 \time 6/4
}

sop = {
 \tempoetc
 \relative c'' {
  \repeat unfold 24 {
    c16\mf c\mp c c c c c c
  }
 }
 \bar "||"
}

alto = {
 s1
}

tenor = {
 \tempoetc
 \relative c' {
  \repeat unfold 16 {
    c4\mf c\mp c
  }
 }
}

bass = {
 \tempoetc
 \relative c {
  \repeat unfold 8 {
    c2.\mf c2.\mf
  }
 }
 \bar "||"
}

\score {
  \new PianoStaff <<
    \set Score.midiChannelMapping = #'voice
    \new Staff <<
      \clef bass
      \key c \major
%     \cadenzaOn
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \sop    >>
      << \alto   >>
    >>
    \new Staff <<
      \clef bass
      \key c \major
%     \cadenzaOn
      \set Staff.printPartCombineTexts = ##f
      \partcombine
      << \tenor >>
      << \bass  >>
    >>
  >>
  \layout { }
  \midi { }
}
