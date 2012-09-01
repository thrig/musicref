% LilyPond engraving system - http://www.lilypond.org/

\version "2.14.0"

\header {
  title = "Where is Tritone?"
  subtitle = "because counterpoint frowns on tritone cross relations, etc."
}

upper = {
  \clef treble

  \relative c' {
    \key c \major
    <b f'>2
    <f' b>

    \key g \major
    <fis c'>
    <c' fis>

    \key d \major
    <cis, g'>
    <g' cis>

    \key a \major
    <gis d'>
    <d' gis>

    \key e \major
    <dis, a'>
    <a' dis>

    \key b \major
    <ais, e'>
    <e' ais>

    \key ges \major
    <f ces'>
    <ces' f>

    \key des \major
    <c, ges'>
    <ges' c>

    \key aes \major
    <g des'>
    <des' g>

    \key ees \major
    <d, aes'>
    <aes' d>

    \key bes \major
    <a ees'>
    <ees' a>

    \key f \major
    <e, bes'>
    <bes' e>
  }
}
lower = {
  \clef bass
  \relative c {
    \key c \major
    <b f'>2
    <f' b>

    \key g \major
    <fis c'>
    <c' fis>

    \key d \major
    <cis, g'>
    <g' cis>

    \key a \major
    <gis d'>
    <d' gis>

    \key e \major
    <dis, a'>
    <a' dis>

    \key b \major
    <ais, e'>
    <e' ais>

    \key ges \major
    <f, ces'>
    <ces' f>

    \key des \major
    <c, ges'>
    <ges' c>

    \key aes \major
    <g des'>
    <des' g>

    \key ees \major
    <d, aes'>
    <aes' d>

    \key bes \major
    <a ees'>
    <ees' a>

    \key f \major
    <e, bes'>
    <bes' e>
  }
}
\score {
  \new PianoStaff <<
    \set PianoStaff.printKeyCancellation = ##f
    \set Score.midiChannelMapping = #'instrument
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
