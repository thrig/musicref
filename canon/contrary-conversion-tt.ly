% LilyPond engraving system - http://www.lilypond.org/

\version "2.16.0"

upper = \relative c' {
  \cadenzaOn

c!1^"Proposta (Tritone Conversion Table)"
cis!
d!
dis!
e!
f!
fis!
g!
gis!
a!
ais!
b!

  \cadenzaOff
  \bar "|"
}


lower = \relative c''' {
  \cadenzaOn

c!1_"Risposta"
b!
ais!
a!
gis!
g!
fis!
f!
e!
dis!
d!
cis!

  \cadenzaOff
  \bar "|"
}

theblackdots = {
  <<
%   \new StaffGroup <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
%   >>
  >>
}

\score {
  \theblackdots
  \layout { }
}
