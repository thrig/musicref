% For listening practice

\version "2.14.0"

blackdots = {
  \tempo 4=72
  <c c>8 <c c> <c c> <c c> <c c> <c c> <c c> <c c>
  <c d> <c d> <c d> <c d> <c d> <c d> <c d> <c d>
  <c e> <c e> <c e> <c e> <c e> <c e> <c e> <c e>
  <c f> <c f> <c f> <c f> <c f> <c f> <c f> <c f>
  <c g'> <c g'> <c g'> <c g'> <c g'> <c g'> <c g'> <c g'>
  <c a'> <c a'> <c a'> <c a'> <c a'> <c a'> <c a'> <c a'>
  <c b'> <c b'> <c b'> <c b'> <c b'> <c b'> <c b'> <c b'>
  <c c'> <c c'> <c c'> <c c'> <c c'> <c c'> <c c'> <c c'>
  <c d'> <c d'> <c d'> <c d'> <c d'> <c d'> <c d'> <c d'>
  <c e'> <c e'> <c e'> <c e'> <c e'> <c e'> <c e'> <c e'>
  <c f'> <c f'> <c f'> <c f'> <c f'> <c f'> <c f'> <c f'>
  <c g''> <c g''> <c g''> <c g''> <c g''> <c g''> <c g''> <c g''>
  <c a''> <c a''> <c a''> <c a''> <c a''> <c a''> <c a''> <c a''>
  <c b''> <c b''> <c b''> <c b''> <c b''> <c b''> <c b''> <c b''>
  <c c''> <c c''> <c c''> <c c''> <c c''> <c c''> <c c''> <c c''>
  <c d''> <c d''> <c d''> <c d''> <c d''> <c d''> <c d''> <c d''>
  <c e''> <c e''> <c e''> <c e''> <c e''> <c e''> <c e''> <c e''>
  <c f''> <c f''> <c f''> <c f''> <c f''> <c f''> <c f''> <c f''>
  <c g'''> <c g'''> <c g'''> <c g'''> <c g'''> <c g'''> <c g'''> <c g'''>
  <c a'''> <c a'''> <c a'''> <c a'''> <c a'''> <c a'''> <c a'''> <c a'''>
  <c b'''> <c b'''> <c b'''> <c b'''> <c b'''> <c b'''> <c b'''> <c b'''>
  <c c'''> <c c'''> <c c'''> <c c'''> <c c'''> <c c'''> <c c'''> <c c'''>
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
