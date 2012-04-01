% LilyPond engraving system - http://www.lilypond.org/

\version "2.14.0"

\header {
  tagline     = ##f
}

upper = {
  \clef treble
  \key b \major
  \tempo 4=168

  \relative c'' {
    <<
      { b1 ais2 a2 gis1 cis dis } \\
      { fis,1 e2 fis2 e1 fis~ fis } \\
      { dis1 cis2 b2_~ b1 ais b }
    >>
  }

  \bar "|."
}

lower = {
  \clef bass
  \key b \major

  \relative c {
    b1_"I"
    cis2_\markup { \tiny { \halign #0 "IVb/IV" } }
\stemUp
    dis2_\markup { \tiny { "V7b/IV" } }
    e1_"IV"
    fis_"V"
    b,1_"I"
  }

  \bar "|."
}

theMusic = {
  \new PianoStaff <<
    \set Score.tempoHideNote = ##t
    \set PianoStaff.midiInstrument = #"Church Organ"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}

\book {
  \paper {
   % #(set-paper-size "arch a")
  }
  \score {
    \theMusic
    \layout { }
  }
  \score {
%   \unfoldRepeats \articulate {
%     \set Score.midiChannelMapping = #'voice
      \theMusic
%   }
    \midi { }
  }
}
