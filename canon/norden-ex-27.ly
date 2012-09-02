% LilyPond engraving system - http://www.lilypond.org/
%
% Ex. 27 from Canon book, p. 39.
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
Changes from Norden: fixup m5 to workaround horrible empty octave.
Thought I could swing a different path through completion, but that
leads to dissonance or awkward leaps.
} }

voiceone = \relative a' {
  \set Score.tempoHideNote = ##t
  \tempo 4=192
  \key g \major

  R1 R
  \repeat volta 2 {
    e^"R" g a g fis2 e c'1 b fis
  }
  g1\fermata
}

%                                                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Lower     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                           %

voicetwo = \relative b {
  \key g \major

  g1_"P"^"c=6" b
  \repeat volta 2 {
    c b a2 g e'1 d a g b
  }
  g1
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
  \clef bass
  \voicetwo

% \bar "|."
}

%pedal = {
%}

theblackdots = {
  <<
    \new StaffGroup <<
      \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
      \set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)

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
  \unfoldRepeats \themusic
  \midi { }
}
