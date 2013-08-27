% LilyPond engraving system - http://www.lilypond.org/

\version "2.16.0"

\header {
  title = "Palestrina Ornaments"
  subtitle = \markup { via \italic "Counterpoint" by Knud Jeppesen }
  tagline = ##f
}

\score {
  \new StaffGroup <<
    \new Staff { \relative b { \clef alto
c a b c
\bar "||"
c a c b
\bar "||"
c a c d
\bar "||"
c a d c
\bar "||"
c a a' g
\bar "||"
f f, a b
\bar "||"
c b a f
\bar "||"
c' b c a
\bar "||"
c d e c
\bar "||"
c d e b
\bar "||"
c d e a,
\bar "||"
c d e e,
\bar "||"
e' c d2
\bar "||"
e4 c e2
\bar "||"
e4 c f2
\bar "||"
e4 c g'2
\bar "||"
e4 c a'2
\bar "||"
e4 c c'2
\bar "||"
e,4 b d2
\bar "||"
e4 b e2
\bar "||"
e4 a, d2
\bar "||"
e4 a, e'2
\bar "||"
e4 a, a'2
\bar "||"
    } }
  >>
  \layout { }
  \midi { }
}
