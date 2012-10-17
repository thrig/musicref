% Derived from wikipedia image of the various chords, plus atonal foo
% that shows two major groupings.
%
% [0,2,4,7,9] most prevelant (5 of 11), plus is subset of [0,2,4,5,7,9]
% [0,2,4,5,7,9]
% [0,2,3,5,7,9] this one similar to previous
%
% [0,2,3,5,8] one use, subset of [0,2,3,5,6,8]
% [0,2,3,5,6,8]
% [0,1,3,5,6,8] this similar to previous
%
% [0,2,5,7] - subset of Ju (ii)

\version "2.14.0"

\header {
  title   = "SHO chords"
  tagline = ##f
}

blackdots = {
  \accidentalStyle "neo-modern"
  \textLengthOn

  <g a b d e>1_\markup { \center-align \center-column { "Ju (i)" \sans \teeny " [0,2,4,7,9] " \sans \teeny "032140" } }
  <fis g a b d e>_\markup { \center-align \center-column { "Ju (ii)" \sans \teeny " [0,2,4,5,7,9] " \sans \teeny "143250" } }
  <fis gis a b d fis>_\markup { \center-align \center-column { "Ge" \sans \teeny " [0,2,3,5,8] " \sans \teeny "123121" } }
  <e a b d e fis>_\markup { \center-align \center-column { "Otsu" \sans \teeny " [0,2,4,7,9] " \sans \teeny "032140" } }
  <cis d e gis a b>_\markup { \center-align \center-column { "Ku" \sans \teeny " [0,1,3,5,6,8] " \sans \teeny "233241" } }
  <gis' a b c d fis>_\markup { \center-align \center-column { "Bi" \sans \teeny " [0,2,3,5,6,8] " \sans \teeny "234222" } }
  <b, d e a b fis'>_\markup { \center-align \center-column { "Ichi" \sans \teeny " [0,2,4,7,9] " \sans \teeny "032140" } }
  <a' b d e fis>_\markup { \center-align \center-column { "Gyu" \sans \teeny " [0,2,4,7,9] " \sans \teeny "032140" } }
  <d, e a b e fis>_\markup { \center-align \center-column { "Bo" \sans \teeny " [0,2,4,7,9] " \sans \teeny "032140" } }
  <a e' a b e fis>_\markup { \center-align \center-column { "Kutsu" \sans \teeny " [0,2,5,7] " \sans \teeny "021030" } }
  <a' b c d e fis>_\markup { \center-align \center-column { "Hi" \sans \teeny " [0,2,3,5,7,9] " \sans \teeny "143241" } }
}

\score {
  \new Staff << \relative g' {
    \blackdots
  } >>
  \layout { }
}

\score {
  \new Staff << \relative g' {
    \set Staff.midiInstrument = #"acoustic grand"
    \blackdots
  } >>
  \midi { }
}
