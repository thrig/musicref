% For listening practice

\version "2.14.0"

blackdots = {
  \tempo 4=72
  <c c'>8 <c c'> <c c'> <c c'> <c c'> <c c'> <c c'> <c c'>
  <c c''> <c c''> <c c''> <c c''> <c c''> <c c''> <c c''> <c c''>
  <c c'''> <c c'''> <c c'''> <c c'''> <c c'''> <c c'''> <c c'''> <c c'''>
  <c g'> <c g'> <c g'> <c g'> <c g'> <c g'> <c g'> <c g'>
  <c g''> <c g''> <c g''> <c g''> <c g''> <c g''> <c g''> <c g''>
  <c g'''> <c g'''> <c g'''> <c g'''> <c g'''> <c g'''> <c g'''> <c g'''>
  <c e> <c e> <c e> <c e> <c e> <c e> <c e> <c e>
  <c e'> <c e'> <c e'> <c e'> <c e'> <c e'> <c e'> <c e'>
  <c e''> <c e''> <c e''> <c e''> <c e''> <c e''> <c e''> <c e''>
  <c d> <c d> <c d> <c d> <c d> <c d> <c d> <c d>
  <c d'> <c d'> <c d'> <c d'> <c d'> <c d'> <c d'> <c d'>
  <c d''> <c d''> <c d''> <c d''> <c d''> <c d''> <c d''> <c d''>
  <c a'> <c a'> <c a'> <c a'> <c a'> <c a'> <c a'> <c a'>
  <c a''> <c a''> <c a''> <c a''> <c a''> <c a''> <c a''> <c a''>
  <c a'''> <c a'''> <c a'''> <c a'''> <c a'''> <c a'''> <c a'''> <c a'''>
  <c b'> <c b'> <c b'> <c b'> <c b'> <c b'> <c b'> <c b'>
  <c b''> <c b''> <c b''> <c b''> <c b''> <c b''> <c b''> <c b''>
  <c b'''> <c b'''> <c b'''> <c b'''> <c b'''> <c b'''> <c b'''> <c b'''>
  <c f> <c f> <c f> <c f> <c f> <c f> <c f> <c f>
  <c f'> <c f'> <c f'> <c f'> <c f'> <c f'> <c f'> <c f'>
  <c f''> <c f''> <c f''> <c f''> <c f''> <c f''> <c f''> <c f''>
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
