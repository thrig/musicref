% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Chromatic D2 (-P5/+P4)"
}

theKey = \relative g {
  <g d' g b>
  <c, e' g c>
}

upper = {
  \clef bass
  \key g \major

  \theKey
  \transpose g f \theKey
  \transpose g ees \theKey
  \transpose g des \theKey
  \transpose g b, \theKey   % or ces
  \transpose g a, \theKey
  \transpose g g, \theKey

  \bar "|."
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
