\version "2.18.2"

upper = \relative e'' {
  <<
  { \relative e'' {
    e8 d^"*" e2. \bar "||"
    bes2
  } } \\
  { \relative e'  {
    a4       c8 d_"*" c2 \bar "||"
    ees,8 f16_"*" ees d8 ees
  } }
  >>
}
lower = \relative g {
  \clef bass
  c4 a2.
  g4 g
}

\new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" \lower
>>
