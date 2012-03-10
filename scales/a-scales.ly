% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Some Scales in A"
}

upper = {
  \clef treble
  \key a \major
  \set Score.tempoHideNote = ##t
  \tempo 4=120

\transpose g a {
  \relative g' {
    g4^"Ionian (Major)" a b c d e fis g <g, b d>1
    \bar "||"
  }
  \relative g' {
    g4^"Lydian" a b cis d e fis g <g, b d>1
    \bar "||"
  }
  \relative g' {
    g4^"Mixolydian" a b c d e f g <g, b d>1
    \bar "||"
  }
  \relative g' {
    g4^"Dorian" a bes c d e f g <g, bes d>1
    \bar "||"
  }
  \relative g' {
    g4^"Aeolian (minor)" a bes c d ees f g <g, bes d>1
    \bar "||"
  }
  \relative g' {
    g4^"(Harmonic minor)" a bes c d ees fis! g <g, bes d>1
    \bar "||"
  }
  \relative g' {
    g4^"(Melodic minor ascending)" a bes c d e fis g <g, bes d>1
    \bar "||"
  }
  \relative g' {
    g4^"Phrygian" aes bes c d ees f g <g, bes d>1
    \bar "||"
  }
  \relative g' {
    g4^"Locrian" aes bes c des ees f g <g, bes des>1
  }
  \bar "|."
} }
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
