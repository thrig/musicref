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

  e4 b'4\rest |
  c4 s4 |
  g4 s4 |
  c4 d4\rest |
  c4 r4 |

  \key ees \major g2 f2^"G7" |
  ees2 d |
  \key ees \major bes2 b |
  ees2 g |
  \key ees \major ees2 g |

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

  bes2~ |
  g2~ |
  ees2~ |
  ees,2~ |
  ees,2~ |

  bes4 b'2.\rest |
  g4 s2. |
  ees4 d2.\rest |
  ees4 s2. |
  ees4 d'2.\rest |
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
