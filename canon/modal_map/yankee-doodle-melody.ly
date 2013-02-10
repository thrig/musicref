\version "2.14.0"
\header {
  tagline = #f
}
\score {
  \new Staff << \relative a' { \include "yankee-doodle-melody" } >>
  \layout { }
  \midi { }
}
