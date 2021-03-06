% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\include "articulate.ly"

#(define-markup-list-command (paragraph layout props args) (markup-list?)
 (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

\header {
%  title = "Exercise in G7"
%  composer = "Jeremy Mates"
%  subsubtitle = "2012-??-??"
%  copyright = "© 2012 Jeremy Mates - Creative Commons Attribution 3.0 United States License"
  tagline = #f
}

tempoAndStuff = {
  \time 4/4
  \tempo 4=70
}

\parallelMusic #'(voiceA voiceB voiceC voiceD voiceE) {
  \stemUp
  g2 f~ |
  c2 d~ |
  e2 a  |
  c2 d  |
  c2 d, |

  f2^"G7" e~ |
  d2 c~  |
  b2 g~  |
  g2 c,~ |
  g2 c~  |

  e4 b'2\rest fis'4~ |
  c4 s2 fis4~ |
  g4 s2 s4 |
  c4 d2\rest \clef treble s4 |
  c4 r2 s4 |

  \key d \major fis4~ fis2 fis4~ |
  fis4 a2 b4~ |
  \key d \major b'4\rest a,2 d4~ |
  s1 |
  \key d \major r4 d2 b4~ |

  fis4 f2^"G7" e4~ |
  b4 b2~ b4~ |
  d4~ d2 e4~ |
  s1 |
  b4 g2 g4~ |

  e4~ e2 fis4~ |
  b4  cis2 a4~ |
  e4  e2  d4~ |
  s1 |
  g4 a2 d,4~ |

  fis2 s2 |
  a2 b2\rest |
  d2 b'2\rest \clef bass |
  s1 |
  d2 r2 |

  \key ees \major g2 f2^"G7" |
  ees2 d |
  \key ees \major bes,2 b |
  ees2 g |
  \key ees \major ees'2 g |

  ees2 des |
  c2 bes |
  g2~ g |
  c,2 ees |
  c,2 ees |

  c2 bes |
  aes2 f |
  ees2 d |
  aes,2 bes |
  aes,2 bes |

  bes2. b4\rest |
  g2. s4 |
  ees2. b'4\rest |
  ees,2. s4 |
  ees,2. r4 |
  \bar "||"
}

theMusic = {
  <<
    \new PianoStaff <<
      \set PianoStaff.midiInstrument = #"Church Organ"
      \set Score.barNumberVisibility = #(every-nth-bar-number-visible 99)

      \set Score.tempoHideNote = ##t

      \new Staff {
        \tempoAndStuff
        <<
          \relative g' \voiceA
          \\
          \relative c' \voiceB
        >>
      }
      \new Staff {
        \tempoAndStuff \clef bass
        <<
          \relative g \voiceC
          \\
          \relative c \voiceD
        >>
      }
    >>
    \new Staff {
      \set Staff.midiInstrument = #"Church Organ"
      \tempoAndStuff \clef bass
      <<
        \relative c \voiceE
      >>
    }
  >>
}

\book {
  \paper {
    #(set-paper-size "a5")
  }
  \score {
    \theMusic
    \layout { }
  }
  \score {
%    \unfoldRepeats \articulate {
      \theMusic
%    }
    \midi { }
  }
%  \markuplines { \paragraph { \tiny      {
%This work is licensed under the Creative Commons Attribution 3.0 United
%States License. To view a copy of this license, visit
%http://creativecommons.org/licenses/by/3.0/us/ or send a letter to
%Creative Commons, 171 Second Street, Suite 300, San Francisco,
%California, 94105, USA.
%} } }
}
