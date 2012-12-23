% LilyPond engraving system - http://www.lilypond.org/

\version "2.16.0"

upper = \relative c' {
  \cadenzaOn

c!1^"Proposta (Perfect Fifth Conversion Table)"
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

cis!1_"Risposta"
c!
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
