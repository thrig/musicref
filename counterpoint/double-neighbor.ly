% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "Double Neighbor"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \set Score.tempoHideNote = ##t
  \tempo 4=168

  b1 c1 \bar "||"
  b4 c a b c s2. \bar "||"
  e1 d1 \bar "||"
  e4 d f e d s2.
  
  \bar "|."
}
lower = \relative c'' {
  \clef alto
  \key c \major

  g1 e1 \bar "||"
  g1 e1 \bar "||"
  c1 f1 \bar "||"
  c1 f1

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
