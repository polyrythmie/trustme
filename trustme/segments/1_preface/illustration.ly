\version "2.18.2"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\score {
    \new Score \with {
        currentBarNumber = #1
    } <<
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=60
                \time 4/4
                \mark \markup {
                    \fontsize
                        #-3
                        Preface
                    }
                s1 * 15
            }
        }
        \context PerformerGroup = "Player 1 Performer Group" \with {
            instrumentName = \markup { "Player 1" }
            shortInstrumentName = \markup { "P. 1" }
        } <<
            \context DefaultStaff = "Player 1 Default Staff" {
                \context DefaultVoice = "Player 1 Default Voice" {
                    {
                        % [Player 1 Default Voice] Measure 1
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 2
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 3
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 4
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 5
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 6
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 7
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 8
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 9
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 10
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 11
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 12
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 13
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 14
                        {
                            c'1
                        }
                        % [Player 1 Default Voice] Measure 15
                        {
                            c'1
                        }
                    }
                }
            }
        >>
        \context PerformerGroup = "Player 2 Performer Group" \with {
            instrumentName = \markup { "Player 2" }
            shortInstrumentName = \markup { "P. 2" }
        } <<
            \context DefaultStaff = "Player 2 Default Staff" {
                \context DefaultVoice = "Player 2 Default Voice" {
                    {
                        % [Player 2 Default Voice] Measure 1
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 15
                            \stopStaff
                            \startStaff
                        }
                    }
                }
            }
        >>
        \context PerformerGroup = "Player 3 Performer Group" \with {
            instrumentName = \markup { "Player 3" }
            shortInstrumentName = \markup { "P. 3" }
        } <<
            \context DefaultStaff = "Player 3 Default Staff" {
                \context DefaultVoice = "Player 3 Default Voice" {
                    {
                        % [Player 3 Default Voice] Measure 1
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 15
                            \stopStaff
                            \startStaff
                        }
                    }
                }
            }
        >>
    >>
}