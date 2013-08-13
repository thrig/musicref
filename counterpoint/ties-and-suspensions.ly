% LilyPond engraving system - http://www.lilypond.org/

\version "2.16.0"

\header {
  title = "Ties and Suspensions"
  subtitle = \markup { via \italic "The Technique of Canon" by Hugo Norden }
  tagline = ##f
}

#(define-markup-list-command (paragraph layout props args) (markup-list?)
 (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 4) args))))

\markuplist { \paragraph {
Permitted ties and suspensions per academic counterpoint. Double Counterpoint (D.C.) indicates the interval between the notes on the upper and lower staves; these are set against middle C, and the interval between middle C and the voices in counterpoint shown below. Additional suspensions are allowed e.g. if D.C. 8 is expanded to D.C. 15 so that incorrect 2-1 becomes permitted 9-8. D.C. 8 (an octave) is otherwise similar to D.C. 1 (unison) and D.C. 15 (two octaves), D.C. 9 to D.C. 2 and D.C. 16, etc.
} }

\markuplist { \paragraph {
Listen to these, perhaps in comparison to intervals not listed here.
} }

\score {
  \new StaffGroup <<
    \new Staff { \relative b' { b2 a a g g f f e } }
    \new Staff { \relative b { c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "|." } }
    \new Staff { \clef bass \relative b { b2 a a g g f f e } }
    \figures { \bassFigureExtendersOn
      <7 2>4 <7 2> <6 3>2
      <6\! 3\!>4 <6 3> <5 4>2
      <5\! 4\!>4 <5 4> <4\! 5\!>2
      <4\! 5\!>4 <4 5> <3 6>2
    }
  >>
  \header {
    piece = "Double Counterpoint 8"
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
}

\score {
  \new StaffGroup <<
    \new Staff { \relative b' { d2 c c b b a a g g f f e } }
    \new Staff { \relative b { c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "|." } }
    \new Staff { \clef bass \relative b { c2 b b a a g g f f e e d } }
    \figures { \bassFigureExtendersOn
      <9 1>4 <9 1> <8 2>2
      <8\! 2\!>4 <8 2> <7 3>2
      <7\! 3\!>4 <7 3> <6 4>2
      <6\! 4\!>4 <6 4> <5 5>2
      <5\! 5\!>4 <5 5> <4 6>2
      <4\! 6\!>4 <4 6> <3 7>2
    }
  >>
  \header {
    piece = "Double Counterpoint 9"
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
}

\score {
  \new StaffGroup <<
    \new Staff { \relative b' { d2 c b a a g } }
    \new Staff { \relative b { c1 \bar "||" c1 \bar "||" c1 \bar "|." } }
    \new Staff { \clef bass \relative b { b2 a g f f e } }
    \figures { \bassFigureExtendersOn
      <9 2>4 <9 2> <8 3>2
      <7\! 4\!>4 <7 4> <6 5>2
      <6\! 5\!>4 <6 5> <5\! 6\!>2
    }
  >>
  \header {
    piece = "Double Counterpoint 10"
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
}

\score {
  \new StaffGroup <<
    \new Staff { \relative f'' { f2 e e d d c c b b a a g f e e d } }
    \new Staff { \relative b { c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "|." } }
    \new Staff { \clef bass \relative b { c2 b b a a g g f f e e d c b b a } }
    \figures { \bassFigureExtendersOn
      <11 1>4 <11 1> <10 2>2
      <10\! 2\!>4 <10 2> <9 3>2
      <9\! 3\!>4 <9 3> <8 4>2
      <8\! 4\!>4 <8 4> <7 5>2
      <7\! 5\!>4 <7 5> <6 6>2
      <6\! 6\!>4 <6 6> <5 7>2
      <4\! 8\!>4 <4 8> <3 9>2
      <3\! 9\!>4 <3 9> <2 10>2
    }
  >>
  \header {
    piece = "Double Counterpoint 11"
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
}

\score {
  \new StaffGroup <<
    \new Staff { \relative f'' { f2 e d c c b b a f e  } }
    \new Staff { \relative b { c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "|." } }
    \new Staff { \clef bass \relative b { b2 a g f f e e d b a } }
    \figures { \bassFigureExtendersOn
      <11 2>4 <11 2> <10 3>2
      <9\! 4\!>4 <9 4> <8 5>2
      <8\! 5\!>4 <8 5> <7 6>2
      <7\! 6\!>4 <7 6> <6\! 7\!>2
      <4\! 9\!>4 <4 9> <3 10>2
    }
  >>
  \header {
    piece = "Double Counterpoint 12"
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
}

\score {
  \new StaffGroup <<
    \new Staff { \relative f'' { a2 g g f f e e d d c a g g f f e e d } }
    \new Staff { \relative b { c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "|." } }
    \new Staff { \clef bass \relative b { c2 b b a a g g f f e c b b a a g g f } }
    \figures { \bassFigureExtendersOn
      <13 1>4 <13 1> <12 2>2
      <12\! 2\!>4 <12 2> <11 3>2
      <11\! 3\!>4 <11 3> <10 4>2
      <10\! 4\!>4 <10 4> <9 5>2
      <9\! 5\!>4 <9 5> <8 6>2
      <6\! 8\!>4 <6 8> <5 9>2
      <5\! 9\!>4 <5 9> <4 10>2
      <4\! 10\!>4 <4 10> <3 11>2
      <3\! 11\!>4 <3 11> <2 12>2
    }
  >>
  \header {
    piece = "Double Counterpoint 13"
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
}

\score {
  \new StaffGroup <<
    \new Staff { \relative f'' { b2 a a g f e e d d c b a a g f e e d } }
    \new Staff { \relative b { c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "||" c1 \bar "|." } }
    \new Staff { \clef bass \relative b { c2 b b a g f f e e d c b b a g f f e } }
    \figures { \bassFigureExtendersOn
      <14 1>4 <14 1> <13 2>2
      <13\! 2\!>4 <13 2> <12 3>2
      <11\! 4\!>4 <11 4> <10 5>2
      <10\! 5\!>4 <10 5> <9 6>2
      <9\! 6\!>4 <9 6> <8 7>2
      <7\! 8\!>4 <7 8> <6 9>2
      <6\! 9\!>4 <6 9> <5 10>2
      <4\! 11\!>4 <4 11> <3 12>2
      <3\! 12\!>4 <3 12> <2 13>2
    }
  >>
  \header {
    piece = "Double Counterpoint 14"
  }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
}

\markuplist { \paragraph {
As an example usage, consider a three-voice canon. The offset between voice introduction is two measures, and the first response a third (D.C. 3 or actually D.C. 10) above, and the second response D.C. 13 below that of the first response. These choices are largely arbitrary; experiment with other offsets. With the given offsets, calculate which suspensions are allowed: for each suspension in the first offset, calculate what suspension results in each subsequent response. (The empty measures would also need to be filled in, but are not directly relevant to seeing what suspensions result between the different voices.)
}

\score {
  \new StaffGroup <<
    \new Staff { \key g \minor \relative f'' { s1*2 a2^"Response 1" g s1 bes,1 s1*2 } }
    \new Staff { \key g \minor \relative f'' { f2^"Principal" ees s1 g,1 s1*4 } }
    \new Staff { \clef bass \key g \minor \relative b { s1*4 c2^"Response 2" bes2 s1 d,1 } }
    \figures { \bassFigureExtendersOn
      s1*2
      <9>4 <9> <8>2
      s1
      <14>4 <14> <15>2
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner
        #'base-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  \midi { }
} }

\markuplist { \paragraph {
D.C. 10 permits the 9-8 suspension, though that creates a 14-15 in the bass voice, which does not appear in any of the charts above, nor as octave reduced 7-8, so would require listening to hear whether the result is acceptable. The other two D.C. 10 suspensions, 7-6 and 6-5 correspond to permitted 9-10 and 10-11 suspensions in the bass voice. Other D.C. intervals and canonic offsets will, again, offer different permitted suspensions between the resulting voices; experiment to see what is possible.
} }
