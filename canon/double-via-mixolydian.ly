% LilyPond engraving system - http://www.lilypond.org/

\version "2.16.0"
\include "articulate.ly"

\header {
  title       = "Contrary Canon via Mixolydian Conversion"
  subsubtitle = "2012-12-24"
  composer    = "Jeremy Mates"
  copyright   = "© 2012 Creative Commons Attribution 3.0 United States License"
  tagline     = ##f
}

keytempoetc = {
  \key c \major
  \time 3/4
}

voiceone = \relative b' {
  \keytempoetc
  \clef treble

  c2.
  f,
  bes
  a
  g
  f
  b
  c
}

voicetwo = \relative g {
  \keytempoetc
  \clef alto

  c2.
  aes2.
  d2.
  d2.
  e2.
  a,2.
  d2.
  e2.
}

voicethree = \relative c {
  \keytempoetc
  \clef bass

  \override TextScript #'staff-padding = #2.0
  \override TextScript #'Y-extent = #'(-1.5 . 1.5)

  c2._"I"
  des_"♭II"
  g_"v"
  f
  e
  d
  g_"V"
  c,
}

%                                                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Misc.     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                           %

upper = {
  \set Staff.instrumentName = #"Risposta"
  \set Staff.midiInstrument = #"violin"
  \voiceone

  \bar "|."
}

middle = {
  \set Staff.instrumentName = ""
  \set Staff.midiInstrument = #"viola"
  \voicetwo

  \bar "|."
}

lower = {
  \set Staff.instrumentName = #"Proposta"
  \set Staff.midiInstrument = #"cello"
  \voicethree

  \bar "|."
}

theblackdots = {
  <<
    \new StaffGroup <<
%     \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
%     \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)

      \new Staff = "upper" \upper
      \new Staff = "middle" \middle
      \new Staff = "lower" \lower
    >>
  >>
}

themusic = {
  <<
    \new PianoStaff <<
      \set Score.midiChannelMapping = #'instrument
      \new Staff = "upper" \upper
      \new Staff = "middle" \middle
      \new Staff = "lower" \lower
    >>
  >>
}

\score {
  \theblackdots
  \layout { indent = 2.3\cm }
}
\score {
% DBG
% \unfoldRepeats \themusic
% \unfoldRepeats \articulate { \themusic }
  \articulate { \themusic }
  \midi { }
}
