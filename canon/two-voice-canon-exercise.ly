% LilyPond engraving system - http://www.lilypond.org/

\version "2.14.0"

#(define-markup-list-command (paragraph layout props args) (markup-list?)
 (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

\markuplines { \paragraph {
The simplest canon must have a note, and then twice that duration as a repeat:
} }

{
  \clef alto
  \time 2/4
  \relative c' {
    c2
    \repeat volta 2 {
      s2
      s2
    }
  }
}

\markuplines { \paragraph {
Since the first note must repeat, fill it in at the last measure:
} }

{
  \clef alto
  \time 2/4
  \relative c' {
    c2
    \repeat volta 2 {
      s2
      c2
    }
  }
}

\markuplines { \paragraph {
Next, decide the offset between the first and second voice. Too small a value, and the musical will run into one another, while too large a value will yield unrelated strains many octaves apart. Let's use four, so count up four notes starting from and including the first note, then place that note in the next measure over:
} }

{
  \clef alto
  \time 2/4
  \relative c' {
    c2
    \repeat volta 2 {
      \stemUp f2
      \stemDown c2
    }
  }
}

\markuplines { \paragraph {
Now the first voice must do something, ideally below the upper voice, as otherwise the voices cross. Bear in mind that the upper voice must make a corresponding move, so care must be taken that the intervals created in both measures are appropriate:
} }

{
  \clef alto
  \time 2/4
  \relative c' {
    c2
    \repeat volta 2 {
      << { f2 } \\ { d2 } >>
      \stemDown c2
    }
  }
}

\markuplines { \paragraph {
And since the lower voice moved up by a step, so must the upper voice. Note that the upper voice is four up (including the starting note) from the corresponding previous lower note:
} }

{
  \clef alto
  \time 2/4
  \relative c' {
    c2
    \repeat volta 2 {
      << { f2 } \\ { d2 } >>
      << { g2 } \\ { c,2 } >>
    }
  }
}

\markuplines { \paragraph {
When unfolded, this looks like:
} }

{
  \clef alto
  \time 2/4
  \relative c' {
    << { s2 } \\ { c2 } >>
    \repeat unfold 4 {
      << { f2 } \\ { d2 } >>
      << { g2 } \\ { c,2 } >>
    }
  }
}

\markuplines { \paragraph {
Note that where the repeat is drawn is immaterial. In a composition, various other needs will dictate the details of which voice is primary, how the introduction and closing cadence are managed, and so forth.
} }

{
  \clef alto
  \time 2/4
  \relative c' {
    << { f2 } \\ { s2 } >>
    \repeat volta 2 {
      << { g2 } \\ { c,2 } >>
      << { f2 } \\ { d2 } >>
    }
  }
}
