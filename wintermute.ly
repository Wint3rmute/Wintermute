\version "2.20.0"

\header {
  title = "Wintermute"
  subtitle = "learning structures, vol. 2: end firma"
  dedication = \markup{ \italic "This transcribtion is a work in progress" }
  composer = "Composed by Ryan Lott"
  arranger = "Transcribed by Mateusz Bączek"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 80

  \mf
  \partial 2.
  f,2. _\markup {\italic legato }
  
 
  g8 ( f es  d es \> f  es4 d4 )
  c2. \pp

  d8 ( c8 bes8 a8 bes8 c8 bes8 d g2 )
  % \relative { c''4\< c\ff\> c c\! }

  <<des2. ges bes>>

  (c8 bes as g as bes as c)

  (f e d c d e d e)

  (c'8 bes as g as bes as4 g4. f2)

  (g8 f es d es f es4)

  c4

  (f8 es d c d es4 d4 )

  as'2

  d,4

  (f8 es d c d es d)

  b'4 c d2

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  d1 %r4
  g4 (a bes 
  <<f4 a>> 
  ) <<g2. es>> %<<a es>> 

  e4
  f4
  ges
  %r2
  g
  r2
  ges2

}

test = \relative c {

  c d e f g


}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower  
  >>
  \layout { }
  \midi { }
}
