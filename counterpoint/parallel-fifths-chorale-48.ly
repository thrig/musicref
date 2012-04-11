% Write-up of Bach's use of "illegal" fifths as discussed by David Cope
% in "Computer Models of Musical Creativity."

\version "2.12.0"

\header {
  title = "Bach's Chorale no. 48"
  subtitle = "hf = hidden fifth; pf = parallel fifth"
  subsubtitle = "The hidden fifth is likely acceptable due to the top voice moving by a step. But the parallel fifth??"
}

\score {
 <<
  \new Staff << \relative g' {

<< {
  a4 b c c\fermata
  c4 d_"hf" e e\fermata
  e4 e d c
  b4~
\override NoteHead #'color = #red
\override NoteHead #'style = #'diamond
      b8 a
\override NoteHead #'color = #black
\revert NoteHead #'style
           a2\fermata
} \\ {
  e4 e e e
  e4 g g g
  g4 c~ c8 b4 a8
  a4 gis4 e2
} >>

  } >>
  \new Staff << \relative c' {
    \clef bass

<< {
  c4 b a a\fermata
  a4 b c c\fermata
  c8 d c b a b c e
  f4
\override NoteHead #'color = #red
\override NoteHead #'style = #'diamond
     e8 d
\revert NoteHead #'style
\override NoteHead #'color = #black
          cis2\fermata
} \\ {
  a4 gis a a,
  a' g c c,
  c'8 b a g fis gis a4
  d,4 e a,2
} >>

  } >>
 >>
  \midi { }
  \layout { }
}
