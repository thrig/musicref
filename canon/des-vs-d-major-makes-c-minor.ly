% LilyPond engraving system - http://www.lilypond.org/

\version "2.16.0"

zerobeam = \override Beam #'positions = #'(0 . 0)

upper = \relative e' {
  \key des \major
  \cadenzaOn
% why is fis/ges and then des/cis doubled in the text?

\normalsize
ees1^"Proposta"
\teeny
e
\normalsize
f
\teeny
fis
\normalsize
ges
\teeny
g
\normalsize
aes
\teeny
a
\normalsize
bes
\teeny
b
\normalsize
c
des
\teeny
d
\normalsize
ees
  \cadenzaOff
  \bar "|"
}


lower = \relative e''' {
  \key d \major
  \ottava #1
  \cadenzaOn
\normalsize
e1_"Risposta"
\teeny
ees
\normalsize
d
\teeny
des
\normalsize
cis
\teeny
c
\normalsize
b
\teeny
bes
\normalsize
a
\teeny
aes
\normalsize
g
fis
\teeny
f
\normalsize
e
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
