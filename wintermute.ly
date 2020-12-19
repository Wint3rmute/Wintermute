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
  \time 8/8
  \tempo 4 = 120

  f,2

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/8
  d2
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
