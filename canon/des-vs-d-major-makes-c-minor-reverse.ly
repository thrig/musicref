% LilyPond engraving system - http://www.lilypond.org/

\version "2.16.0"

upper = \relative e'' {
  \key des \major
  \cadenzaOn
% why is fis/ges and then des/cis doubled in the text?


\normalsize
ees1^"Proposta (DSC)"
\teeny
d
\normalsize
des
c
\teeny
b
\normalsize
bes
\teeny
a
\normalsize
aes
\teeny
g
\normalsize
ges
\teeny
fis
\normalsize
f
\teeny
e
\normalsize
ees1

  \cadenzaOff
  \bar "|"
}


lower = \relative e {
  \clef bass
  \key d \major
  \cadenzaOn


\normalsize
e1_"Risposta (ASC)"
\teeny
f
\normalsize
fis
g
\teeny
aes
\normalsize
a
\teeny
bes
\normalsize
b
\teeny
c
\normalsize
cis
\teeny
des
\normalsize
d
\teeny
ees
\normalsize
e1

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
