\version "2.18.2"

upper = {
  <<
  { \relative e' {
    e4 f~^"*" f e f2
  } } \\
  { \relative c'  {
    c1 c2
  } }
  >>
}
lower = \relative f {
  \clef bass
  <<
  { \relative g {
    g4 a g2 a
  } } \\
  { \relative c {
    c1 f2
  } }
  >>
}

%\score {
<<
  \new PianoStaff <<
    %\set PianoStaff.midiInstrument = #"church organ"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \new FiguredBass {
    \figuremode {
      s4 < 6 4 >4
    }
  }
>>
%  \midi { }
%}

