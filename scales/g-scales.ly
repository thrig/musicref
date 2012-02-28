% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "G Scales"
}

upper = {
  \clef french
  \key g \major
  \tempo 4=116

  \relative g' {
    g4^"Ionian" a b c d e fis g <g, b d>1
  }
  \relative g' {
    g4^"Lydian" a b cis d e fis g <g, b d>1
  }
  \relative g' {
    g4^"Mixolydian" a b c d e f g <g, b d>1
  }
  \relative g' {
    g4^"Dorian" a bes c d e f g <g, bes d>1
  }
  \relative g' {
    g4^"Aeolian" a bes c d ees f g <g, bes d>1
  }
  \relative g' {
    g4^"Phrygian" aes bes c d ees f g <g, bes d>1
  }
  \relative g' {
    g4^"Locrian" aes bes c des ees f g <g, bes des>1
  }
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
