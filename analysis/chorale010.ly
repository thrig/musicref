% Bach Chorale #10 "Aus tiefer Not schrei' ich zu dir" p.4 from the 371
% harmonized chorales book. (Picked for analysis as it begins with what
% looks like a V2 chord.)
%
% Unconvincing ending, would be followed by "amen cadence" in a church setting?

\version "2.14.0"

\header {
  title = "10. Aus tiefer Not schrei' ich zu dir"
}

sop = \relative b' {
  \set Score.tempoHideNote = ##t
  \tempo 4=112
  \stemUp

  \repeat volta 2 {
    b2 e,4 b'
    c4 b8 a g4 a
    b2\fermata b
    c4 d c8 b a4
    g4( f) e2\fermata
  }

  a2 g4 c
  b4 a d8 c b4
  a2\fermata c
  b4 c d g,
  b4 a g2\fermata
  g2 c4 b
  a4 e g f
  e1\fermata		|

  \bar "||"
}

alto = \relative e' {
  \stemDown

  \repeat volta 2 {
    e2 e4 gis
    a4 g!8 fis e4 fis
    gis2 gis
    a4 b c f,
    e4 d8 c b2
  }

  e2 d4 e8 fis
  g4 a b8 a gis4
  e2 a
  g4 g g8 f e4
  d4 c b2
  e2 e4 e8 d
  c4 c d2_~
  d4 c b2
}

tenor = \relative g {
  \stemUp

  \repeat volta 2 {
    gis2 a4 d
    e4 d e8 d c4
    b2 e
    e4 f g c,
    c8 b a4 gis2
  }

  a2 b4 c
  d4 d8 e f4 b,
  c2 e
  e4 e d c
  fis,8 g4 fis8 g2
  g2 a4 gis
  a4 g! g a
  b4 a gis2		|
}

bass = \relative d {
  \stemDown
  \override Voice.TextScript #'font-size = #-4

  \repeat volta 2 {
% #vii*6 is very similar to V64, off only by one note, with vii leading better
% to tonic while retaining sharpened leading tone. (#vii*6 could also be a
% #iii6/V, but that makes less sense than #vii*)
    d2 c4 b
    a4 b c8 b a4
    e'2_\fermata e
    a4 g8 f e4 f
% literal is III IV (with 7ths if include off-beat 8th notes); if assume
% x/y, VI/v vii7/v doesn't make much sense; VII/iv iv seems a reasonable
% transition to PD and then D.
    c4 d e2_\fermata
  }

% though middle is more a passing chord that helps flip and revoice things
  c'2 b4 a
% 6--5 shift on 8th notes to land on the IV7 prior to the D? Also, V/iv
% a guess, as the cis (3rd) is missing, though with a doubled, and e
% below, that's the 1st and 5th of that chord.
  g4 f8 e d4 e
  a,2_\fermata a'
  e4 d8 c b4 c
  d4 d g,2_\fermata
  c2 a4 e'
  f4 c bes a
  gis a e'2_\fermata

  \bar "||"
}

\score {
  \new PianoStaff <<
    \set Score.midiChannelMapping = #'instrument
    \set PianoStaff.midiInstrument = #"church organ"
    \new Staff <<
      \clef treble
      \key a \minor
      \new Voice = "sop" \sop
      \new Voice = "alto" \alto
    >>
    \new Staff <<
      \clef bass
      \key a \minor
      \new Voice = "tenor" \tenor
      \new Voice = "bass" \bass
    >>
  >>
  \layout { }
  \midi { }
}
