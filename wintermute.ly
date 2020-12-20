\version "2.18.2"

\header {
  title = "Wintermute"
  subtitle = "This transcribtion is a work in progress"
  composer = "Composed by Ryan Lott"
  arranger = "Transcribed by Mateusz Bączek"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \tempo 4 = 90

  \mf
  \partial 2.
  f,2. _\markup {\italic legato }
 
  g8 ( f es  d es \> f  es4 d4. )
  c2. \pp


  % \relative { c''4\< c\ff\> c c\! }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4
  d1 %r4
  g4 (a bes 
  <<f4. a>> 
  ) <<g2. es>> %<<a es>> 

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
