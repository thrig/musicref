% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Chromatic D2 (-P4/+m3)"
  subtitle = "Barely tonal, must break off rep on ♭VI"
  subsubtitle = "and thence to pre-dom function (per TCM)"
}

theKey = \relative c {
  <c g' c e>2
  <b g' g d'>
}

upper = {
  \clef bass
  \key c \major

  \repeat unfold 1 {
    \theKey
    \transpose c bes, \theKey
    \transpose c aes, \theKey
    \transpose c ges, \theKey
    \transpose c fes, \theKey
    \transpose c d, \theKey
    \relative c, {
      <c g' c e>1
    }
  }

  \bar "|."
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
