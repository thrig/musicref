% LilyPond engraving system - http://www.lilypond.org/
%
% "hemiola" - a musical figure in which, typically, two groups of three
% beats are replaced by three groups of two beats, giving the effect of
% a shift between triple and duple meter.
%
% This rendition has a phase/doppler shift kind of feel from the tempo
% change? - yes, there must be a tempo change: "hemiola, which is a
% specific effect where three beats are sounded in the space of two
% beats (or vice versa), creating a sense that time has either sped up
% or slowed down." -- Hidden Complexity by Jessica Rudman.

\version "2.12.0"

\header {
  title = "hemiola test 2"
}

theTriplet = {
  \times 2/3 {
  e8[\ff d\pp c]\pp e[\ff d\pp c]\pp
  }
}

theDuplet = {
  e8[\fff d]\pp e[\fff d]\pp e[\fff d]\pp
}

upper = {
  \time 2/4
  \tempo 4=168

  \repeat unfold 4 {
    \relative c' {
      \theTriplet
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
