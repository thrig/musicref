% LilyPond engraving system - http://www.lilypond.org/
%
% Ex. 25 from Canon book, p. 37.
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
My solution differs in m.9; Norden uses a d1~ d2 c instead of my d1
b1. This rhythmic variation would require other rhythmic changes
elsewhere to make the overall line work. Harmonic cadence at end
introduces tritone cross relation but I've never disliked those, so...
otherwise, there are a few empty fifths (m6, m8) that probably should
be fleshed out, but this is just a simple example.
} }

voiceone = \relative a' {
  \set Score.tempoHideNote = ##t
  \tempo 4=192
  \key a \dorian

  a1^"P"_"c=7"
  \repeat volta 2 {
    g fis g c a b a d b a
  }
  % aaand then have harmony take reigns for stock cadence, though this
  % does introduce a tritone cross relation with the C in the lower voice
  % prior measure.
  fis1 g
}

%                                                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Lower     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                           %

voicetwo = \relative b {
  \key a \dorian

  R1
  \repeat volta 2 {
    b_"R" a g a d b c b e c
  }
  d1 g,
}

%                                                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Misc.     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                           %

upper = {
  \clef treble
  \voiceone

  \bar "|."
}

lower = {
  \clef bass
  \voicetwo

  \bar "|."
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
  \unfoldRepeats \articulate { \themusic }
% \articulate { \themusic }
  \midi { }
}
