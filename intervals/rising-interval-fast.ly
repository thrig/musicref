% For listening practice

\version "2.14.0"

blackdots = {
  \tempo 4=214
  \repeat unfold 4 {
    <c c>8 <c d> <c e> <c f> <c g'> <c a'> <c b'> <c c'> <c d'> <c e'> <c f'> <c g''> <c a''> <c b''> <c c''> <c d''> <c e''> <c f''> <c g'''> <c a'''> <c b'''> <c c'''>
  }
}

\score {
  \new Staff << \relative c {
    \set Staff.instrumentName = #"acoustic grand"
    \blackdots
  } >>
  \layout { }
}

\score {
  \new Staff << \relative c {
    \set Staff.midiInstrument = #"acoustic grand"
    \blackdots
  } >>
  \midi { }
}
