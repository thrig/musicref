% LilyPond engraving system - http://www.lilypond.org/
%
% Scale of 12-pitch material in order Hindemith derives from the
% overtone series.

\version "2.12.0"

\header {
  title = "Hindemith Overtone Series"
  subtitle = "from \"The Craft of musical composition\""
}

upper = \relative c' {
  \clef treble
  \set Score.tempoHideNote = ##t
  \tempo 4=120

  \cadenzaOn
  c1 g' f a e ees aes d, bes' des, b' fis

  \bar "|."
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
