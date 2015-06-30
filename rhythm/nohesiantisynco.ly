% LilyPond engraving system - http://www.lilypond.org/
%
% No syncopation, hesitation, anticipation, and syncopation (according to
% Michael Keith as related in "The Geometry of Musical Rhythm" (p.70)).

\version "2.18.2"

upper = \relative c' {
  \tempo 4=120

  \repeat unfold 8 { c8 c c c } c8 r8 r2.
  \repeat unfold 8 { c8. r16 c8 c } c8 r8 r2.
  \repeat unfold 8 { c16 c8. r16 c8 } c8 r8 r2.
  \repeat unfold 8 { c16 c8 r16 c8 c } c8 r8 r2.
}

\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
