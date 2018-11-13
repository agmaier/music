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
  a c e d c f d g g g e

}

rightTwo = \relative c'' {
  \global
  b g e d f d a g b d f g e f
  
}

leftOne = \relative c' {
  \global
  a d b f e1 g g a a a a a
  
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
