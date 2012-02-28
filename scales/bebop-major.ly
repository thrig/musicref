% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Bebop (Major) Scale Test"
}

theScale = \relative c {
  c d e f g gis a b c
}

upper = {
  \clef bass
  \key c \major
  \time 9/4
  \tempo 4=116

  \theScale

  \transpose c des {
    \theScale
  }

  \transpose c d {
    \theScale
  }

  \transpose c ees {
    \theScale
  }

  \transpose c e {
    \theScale
  }

  \transpose c f {
    \theScale
  }

  \transpose c ges, {
    \theScale
  }

  \transpose c g, {
    \theScale
  }

  \transpose c aes, {
    \theScale
  }

  \transpose c a, {
    \theScale
  }

  \transpose c bes, {
    \theScale
  }

  \transpose c b, {
    \theScale
  }

}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
