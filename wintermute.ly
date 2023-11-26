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

  \partial 2.
  f,2. \mf _\markup {\italic legato }
  
 
  g8 ( f es  d es \> f  es4 d4 )
  c2. \pp

  d8 ( c8 bes8 a8 bes8 c8 bes8 d g2 )
  % \relative { c''4\< c\ff\> c c\! }

  <<des2. ges bes>>

  c8 (bes as g as bes as c)

  (f e d c d e d e)

  (c'8 bes as g as bes as4 g4. f2)

  (g8 f es d es f (es4 es1))


  c2.

  (f8 es d c d es4 d4 )

  as'1.

  % Last segment
  d,2.

  (f8 es d c d es d4)

  bes'2 c d1.

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  d1 %r4
  g4 (a bes 
  <<f4 a>> 
  ) <<g2. es>> %<<a es>> 

  (
  e4
  f4
  ges
  %r2
  g
  )
  r2
  ges2.

  %g4
  %as
  %bes
  %as
  (
  d'4
  e
  f
  e
  d
  c
  bes
  \clef treble
  as
  )

  g' as bes

  c
  <<g4. bes>>
  <<f2 as>>
  %g4.
  %f2

  \clef bass

  a,4
  bes
  b
  c4
  es
  g2.

  <<as,2. es'2.>>

  r4

  \clef treble

  as4. as,2 as'2 es1,

  % Last segment
  as2 as'2

  bes4
  as
  g
  f
  e
  es2
  b1.'


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
