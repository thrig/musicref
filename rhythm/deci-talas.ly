% LilyPond engraving system - http://www.lilypond.org/
%
% Table of deçî-tâlas, via web search of some site in JP that had scanned
% from R. S. Jonson: "Messiaen" (1975). Diacritics have largely been bludgeoned
% away in this telling, and and mistakes likely by my fingers.

\version "2.14.0"

\header {
  title = "deci-talas"
}

doopdoop = {
% \tempo 4=168

  \cadenzaOn
  c8_"aditala"
  \bar "||"
  c16^"dvitiya" c c8
  \bar "||"
  c16_"tritiya" c c16.
  \bar "||"
  c8^"caturthaka" c c16
  \bar "||"
  c16_"pancama" c
  \bar "||"
  c4.^"nihcankalila" c c4 c c8 
  \bar "||"
  c16_"darpana" c c4
  \bar "||"
  c4^"simhavikrama" c c c8 c4. c4 c4.
  \bar "||"
  c8_"ratilila" c c4 c
  \bar "||"
  c16^"simhalila" c c
  \bar "||"
  c16_"kandarpa" c c8 c4 c
  \bar "||"
  c8^"viravikrama" c16 c c4
  \bar "||"
  c16_"ranga" c c c c4
  \bar "||"
  c8^"criranga" c c4 c8 c4.
  \bar "||"
  c16_"caccari" c16. c16 c16. c16 c16. c16 c16. c16 c16. c16 c16. c16 c16. c16 c16.
  \bar "||"
  c4^"pratyanga" c c c8 c
  \bar "||"
  c16_"yatilanga" c8
  \bar "||"
  c8^"gajalila" c c c8.
  \bar "||"
  c8._"hamsalila" c8.
  \bar "||"
  c16^"varnabhinna" c c8 c4
  \bar "||"
  c8_"tribhinna" c4 c4.
  \bar "||"
  c16^"rajacudamani" c c8 c c c16 c c8 c4
  \bar "||"
  c4_"rangodyota" c c c8 c4.
  \bar "||"
  c4^"rangapradipaka" c c8 c4 c4.
  \bar "||"

  c4_"rajatala" c4. c16 c c4 c8 c4.
  \bar "||"
  c8^"tryasra varna" c c16 c c8 c
  \bar "||"
  c16_"micra varna" c c c16. c16 c c c16. c16 c c c16. c4. c4 c16 c c4 c8 c4
  \bar "||"
  c4^"caturasra varna" c8 c16 c c4
  \bar "||"
  c8_"simhavikridita" c4. c4 c4. c c4 c8 c4 c4. c8 c4.
  \bar "||"
  c8^"jaya" c4 c8 c c16 c c4.
  \bar "||"
  c16_"vanamali" c c c c8 c16 c c4
  \bar "||"
  c8^"hamsanada" c4. c16 c c4.
  \bar "||"
  c8_"simhanada" c4 c c8 c4
  \bar "||"
  c16^"kudukka" c c8 c
  \bar "||"
  c16._"turangalila" c c16 c
  \bar "||"
  c8^"carabhalila" c c16 c c c c8 c
  \bar "||"
  c4_"simhanandana" c c8 c4. c8 c4 c16 c c4 c c8 c4. c8 c4. c4 c8 c c( c c c)
  \bar "||"

  c8^"tribhangi" c c4 c
  \bar "||"
  c4_"rangabharana" c c8 c c4.
  \bar "||"
  c8^"mantha (1)" c c4 c8 c c c
  \bar "||"
  c4_"mantha (2)" c8 c c4. c8 c
  \bar "||"
  c4^"mudrita (3)" c8 c c c c c
  \bar "||"
  c8_"mantha (4)" c c c c4 c8 c
  \bar "||"
  c4^"kokilapriya" c8 c4.
  \bar "||"
  c8._"nihsaruka" c8.
  \bar "||"
  c8^"rajavidyadhara" c4 c16 c
  \bar "||"
  c8_"jayamangala" c c4 c8 c c4
  \bar "||"
  c8^"mallikamoua" c c16 c c c
  \bar "||"
  c8_"vijayananda" c c4 c c
  \bar "||"
  c16.^"krida" c16. % or "candanihsaruka"
  \bar "||"

  c4_"jayacri" c8 c4 c8 c4
  \bar "||"
  c16^"makaranda" c c8 c c
  \bar "||"
  c8_"kirti" c4. c4 c8 c4.
  \bar "||"
  c8^"crikirti" c c4 c
  \bar "||"
  c8_"pratitala" c16 c
  \bar "||"
  c4.^"vijaya" c4 c4.
  \bar "||"
  c4_"bindumali" c16 c c c c4
  \bar "||"
  c8^"sama" c c16. c16.
  \bar "||"
  c8_"nandana" c16 c c4.
  \bar "||"
  c4^"manthika (1)" c16 c4.
  \bar "||"
  c16._"manthika (2)" c16
  \bar "||"
  c16^"dipaka" c c8 c c4 c
  \bar "||"

  c8_"udikshana" c c4
  \bar "||"
  c4^"dhenki" c8 c4
  \bar "||"
  c16_"vishama" c c c16. c16 c c c16.
  \bar "||"
  c8^"varnamanthika" c c16 c c8 c16 c
  \bar "||"
  c8_"abhinanda" c c16 c c4
  \bar "||"
  c8^"ananga" c4. c8 c c4
  \bar "||"
  c8_"nandi" c16 c c8 c c4 c
  \bar "||"
  c8^"mallatala" c c c c16 c16.
  \bar "||"
  c16_"kankala (1) purna" c c c c4 c8
  \bar "||"
  c16^"(2) khanda" c c4 c
  \bar "||"
  c4_"(3) sama" c c8
  \bar "||"
  c8^"(4) vishama" c4 c
  \bar "||"
  c8_"kanduka" c c c c4
  \bar "||"
  c16^"ekatali"
  \bar "||"

  c8_"kumuda (1)" c16 c c8 c c4
  \bar "||"
  c8^"kumuda (2)" c16 c c c c4
  \bar "||"
  c4_"catustala" c16 c c
  \bar "||"
  c8.^"dombuli" c8.
  \bar "||"
  c8_"abhanga" c4.
  \bar "||"
  c4^"rayavankola" c8 c4 c16 c
  \bar "||"
  c8_"vasanta" c c c4 c c
  \bar "||"
  c8.^"laghucekhara"
  \bar "||"
  c4._"pratapacekhara" c16 c16.
  \bar "||"
  c16.^"jhaihpa" c c8
  \bar "||"
  c4_"gajajhampa" c16 c c16.
  \bar "||"
  c8^"caturmukha" c4 c8 c4.
  \bar "||"
  c16_"madana" c c4
  \bar "||"
  c8^"pratimanthaka" c c4 c c8 c % or "kollaka"
  \bar "||"

  c4_"parvatilocana" c c c8 c4. c4 c c16 c
  \bar "||"
  c8^"rati" c4
  \bar "||"
  c16_"lila" c8 c4.
  \bar "||"
  c16^"karanayati" c c c
  \bar "||"
  c16_"lalita" c c8 c4
  \bar "||"
  c16^"garugi" c c c16.
  \bar "||"
  c16_"rajanarayana" c c8 c4 c8 c4
  \bar "||"
  c16^"lakskmica" c16. c8 c4
  \bar "||"
  c8_"lalitapriya" c c4 c8 c4
  \bar "||"
  c4^"crinandana" c8 c c4.
  \bar "||"
  c8_"janaka" c c c c4 c c c8 c c4
  \bar "||"
  c16^"vardhana" c c8 c4.
  \bar "||"
  c16_"ragavardhana" c16. c16 c4.
  \bar "||"
  c16^"shattala" c c c c c
  \bar "||"

  c16_"antarakrida" c c16.
  \bar "||"
  c8^"hamsa" c8.
  \bar "||"
  c8_"utsava" c4.
  \bar "||"
  c4^"vilokita" c16 c c4.
  \bar "||"
  c8_"gaja" c c c
  \bar "||"
  c8^"varnayati" c c16 c
  \bar "||"
  c8_"simha" c16 c8 c c
  \bar "||"
  c4^"karuna"
  \bar "||"
  c8_"sarasa" c16 c c c8 c
  \bar "||"
  c16^"candatala" c c c8 c
  \bar "||"
  c4_"candrakala" c c c4. c c c8
  \bar "||"
  d4^"laya" c8 c4. c c c4 c4. c16 c c
  \bar "||"
  
  c4_"skanda" c8 c4 c16 c c4 c
  \bar "||"
  c16^"addatali" c8 c % or "triputa"
  \bar "||"
  c8_"dhatta" c c16 c c8 c4
  \bar "||"
  c8^"dvandva" c c4 c c c8 c4.
  \bar "||"
  c8_"mukunda" c16 c c c c4
  \bar "||"
  c8^"kuvindaka" c16 c c4 c4.
  \bar "||"
  c8_"kaladhvani" c c4 c8 c4.
  \bar "||"
  c8^"gauri" c c c c
  \bar "||"
  c4_"sarasvatikanthabharana" c c8 c c16 c
  \bar "||"
  c16^"bhagna" c c c c8 c c8.
  \bar "||"
  c16_"rajamriganka" c c8 c4
  \bar "||"
  c4^"rajamartanda" c8 c16
  \bar "||"
  c8_"niccanka" c4 c c4. c4 c c c8
  \bar "||"
  c16^"carngadeva" c c4 c4. c4 c c8
  \bar "|."
}

\score {
  \new RhythmicStaff \doopdoop
  \layout { }
  \midi { }
}
