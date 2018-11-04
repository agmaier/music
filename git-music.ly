\version "2.18.2"

\header {
  title = "git music"
}

global = {
  \key c \major
  \time 4/4
  
}

rightOne = \relative c'' {
  \global
  a c e d
  
}

rightTwo = \relative c'' {
  \global
  b g e d
  
}

leftOne = \relative c' {
  \global
  a d b f
  
}

leftTwo = \relative c' {
  \global
  e, es as, des
  
}

\score {
  \new PianoStaff \with {
    instrumentName = "Klavier"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \rightOne \\ \rightTwo >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
