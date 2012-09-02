% LilyPond engraving system - http://www.lilypond.org/
%
% timidity --config-file=organ.cfg

\version "2.14.0"
\include "articulate.ly"

#(define-markup-list-command (paragraph layout props args) (markup-list?)
 (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

%                                                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Upper     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                           %

\markuplines { \paragraph {
Simplest possible canons. c=3 is very much contrived, with a large leap
that crosses voices compensating for what otherwise would be dissonances
or unisons as the voices run together (and is similar to the c=6 except
there the leap is due to the default distances). c=7 and c=8 or higher
are certainly possible, but there is nothing more to be gained here.
} }

voiceone = \relative a' {
  \set Score.tempoHideNote = ##t
  \tempo 4=192
  \key c \major

  R1_"c=5"
  \repeat volta 2 {
    g^"R"
    a
  }
  R1

  R1_"c=6"
  \repeat volta 2 {
    a^"R"
    c
  }
  R1

  R1_"c=4"
  \repeat volta 2 {
    f,^"R" g
  }
  R1

  R1_"c=3"
  \repeat volta 2 {
    e c'
  }
  R1
}

%                                                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Lower     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                           %

voicetwo = \relative b {
  \key c \major

  c1_"P"
  \repeat volta 2 {
    d
    c
  }
  R1

  c1_"P"
  \repeat volta 2 {
    e
    c
  }
  R1

  c1_"P"
  \repeat volta 2 {
    d c
  }
  R1

  c1_"P"
  \repeat volta 2 {
    a' c,
  }
  R1
}

%                                                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Misc.     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                           %

upper = {
  \clef treble
  \voiceone

% \bar "|."
}

lower = {
  \clef alto
  \voicetwo

% \bar "|."
}

%pedal = {
%}

theblackdots = {
  <<
    \new StaffGroup <<
      \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
      \set Score.barNumberVisibility = #(every-nth-bar-number-visible 4)

%     \set PianoStaff.pedalSustainStyle = #'bracket

      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
%     \new Dynamics = "pedal" \pedal
    >>
  >>
}

themusic = {
  <<
    \new PianoStaff <<
      \set Score.midiChannelMapping = #'instrument
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    % as otherwise Dynamics are not picked up on by player
%     \new Staff = "pedal" \pedal
    >>
  >>
}

\score {
  \theblackdots
  \layout { }
}
\score {
% DBG
% \unfoldRepeats \articulate { \themusic }
% \articulate { \themusic }
  \unfoldRepeats { \themusic }
  \midi { }
}
