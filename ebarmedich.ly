\version "2.12.3-1"
\header {
title = "Erbarme dich, from St. Matthew's Passion"
composer = "Johann Sebastian Bach"
arranger = "Arranged for classical guitar by Joseph R. Lewis"

} %end header

guitarUpperVoice = \relative c {
	\set Staff.instrumentName = "Guitar"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
	\voiceOne 
	\clef "G_8"
	\key b \minor
	\time 12/8
	
	\partial 8 fis8-3
	\acciaccatura { b16-0[ cis-1] } d8.-2 \stemUp cis16 b8-0 \appoggiatura cis-2 b8.-0 ais16-2 b8-0 b4.-0 ~ b4 b8
	\slurUp g'8.[( fis32 g a8] ~ a8.) g16 fis8 \appoggiatura fis-1 e4.-0 ~ e8. g16 e8-0
	\appoggiatura d-3 c!8.-1 g'16-4 e8-1 \appoggiatura c!-3 b8.-2 g'16-1 e8-0 \appoggiatura b-3 ais8.[-2 \slurUp e'32(-0 fis-1 g8]-3 ~ g8.) fis16 e8
	d8.( \trill cis32-1 d  e8-4 ~ e8.) d16-2 cis8-1 \appoggiatura b-4 ais4.-2 ~ ais8. fis16-4 ais?-2 cis
	e32[( d cis16) b8( ais16) b-.] cis32[( b ais?16) g!8( fis16) g] g32[( fis e16) ais?8.( g32 fis)] g[( fis e16) cis'8.( fis,32 e)]
	fis32[( e dis16) c8( b16) a'32( g)] a[( g fis16) e8( dis?16) c'32( b)] c[( b a16) g8( fis16) fis'32( e)] fis[( e) dis16) c?8( b16 fis')]
	g32[( a b8) a32( g a g fis16)] e32[( fis g8) fis32( e fis e d16)] c32[( d e8) d32( c d c b16)] ais32[( b cis8) b32(ais? b-0 ais-3 gis16)]-1
	fis8.-3 gis32(-1 ais-3 b-0 cis-2 d-3 cis) e8-.-0 d-.-3 cis \trill b4.-0 ~ b4 r8 

\bar "|."

}
guitarLowerVoice = \relative c {
	\voiceTwo 
	
	\partial 8 r8
	b'-4 b-4 b-4 a-1 a a-1 g-4 g g fis fis fis | e e e fis fis fis g-0 e g b g b-0
	e-0 e-0 e-0 d-1 d-1 d-1 cis-1 cis-1 cis-1 ais-2 ais ais | b-3 b b g-0 g g fis-3 cis-3 e-1 e ais,-1 cis-3 
	fis,4 r8 r4 r8 fis fis fis fis fis fis
	b4 r8 r4 r8 b b b b b b
	e, e e e e e e e e e e e'-2
    d-4 cis-4 b-1 fis'-4 fis, fis b4. ~ b4 r8


}
guitar = \simultaneous {
	\context Voice="guitarUpperVoice" \guitarUpperVoice
	\context Voice="guitarLowerVoice" \guitarLowerVoice
}
\score {
	\simultaneous {
		\context Staff="guitar" \guitar
}

\midi	{
	tempoWholesPerMinute = #(ly:make-moment 84 8)

} % end midi

\layout {
	
	}
}

