% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Nota Cambiata"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \set Score.tempoHideNote = ##t
  \tempo 4=168

  d4 c a b c s2. \bar "||"
  b4 c e d c s2.

  \bar "|."
}
lower = \relative c' {
  \clef alto
  \key c \major

  d1 e \bar "||"
  g1 e

  \bar "|."
}
\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
