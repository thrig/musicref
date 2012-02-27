% LilyPond engraving system - http://www.lilypond.org/

\version "2.12.0"

\header {
  title = "1st Species Consonant Chords"
  subtitle = "via Counterpoint in Composition p.28 ex 1-62"
}

upper = {
  \clef treble
  \key c \major

  % vi expected, as 3rd/6ths permitted and favored by cpt as they avoid
  % illegal P4 and potential for || 5ths?

  <d fis a>1  % I - major
  <d f a>     % i - minor
  <d f bes>   % VI6
  <d fis b>   % vi6?
  <d f b>     % diminised vi6?

  <d fis a>1
}
\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
