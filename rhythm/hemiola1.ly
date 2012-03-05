% LilyPond engraving system - http://www.lilypond.org/
%
% "hemiola" - a musical figure in which, typically, two groups of three
% beats are replaced by three groups of two beats, giving the effect of
% a shift between triple and duple meter.
%
% This is not actually a "hemiola" as in that there must apparently be a
% tempo change; here, there is a beat change.

\version "2.12.0"

\header {
  title = "hemiola test 1"
}

theTriplet = {
  e8[\ff d\pp c]\pp
  e[\ff d\pp c]\pp
  e[\ff d\pp c]\pp
}

theDuplet = {
  e8[\ff d]\pp
  e[\ff d]\pp
  e[\ff d]\pp
}

upper = {
  \time 6/8
  \tempo 4=168

  \repeat unfold 4 {
    \relative c' {
      \theTriplet
      \theTriplet
      \theDuplet
      \theDuplet
    }
  }
}

\score {
  \new Staff \upper
  \layout { }
  \midi { }
}
