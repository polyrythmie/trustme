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
                \time 5/4
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
            \context KeyboardStaff = "Player 1 Keyboard Staff" {
                \context KeyboardVoice = "Player 1 Keyboard Voice" {
                    {
                        % [Player 1 Keyboard Voice] Measure 1
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
            \context KnobStaff = "Player 1 Knob 1 Staff" {
                \context KnobVoice = "Player 1 Knob 1 Voice" {
                    {
                        % [Player 1 Knob 1 Voice] Measure 1
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
            \context KnobStaff = "Player 1 Knob 2 Staff" {
                \context KnobVoice = "Player 1 Knob 2 Voice" {
                    {
                        % [Player 1 Knob 2 Voice] Measure 1
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
            \context KnobStaff = "Player 1 Knob 3 Staff" {
                \context KnobVoice = "Player 1 Knob 3 Voice" {
                    {
                        % [Player 1 Knob 3 Voice] Measure 1
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
            \context KnobStaff = "Player 1 Knob 4 Staff" {
                \context KnobVoice = "Player 1 Knob 4 Voice" {
                    {
                        % [Player 1 Knob 4 Voice] Measure 1
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
        \context PerformerGroup = "Player 2 Performer Group" \with {
            instrumentName = \markup { "Player 2" }
            shortInstrumentName = \markup { "P. 2" }
        } <<
            \context KeyboardStaff = "Player 2 Keyboard Staff" {
                \context KeyboardVoice = "Player 2 Keyboard Voice" {
                    {
                        % [Player 2 Keyboard Voice] Measure 1
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
            \context KnobStaff = "Player 2 Knob 1 Staff" {
                \context KnobVoice = "Player 2 Knob 1 Voice" {
                    {
                        % [Player 2 Knob 1 Voice] Measure 1
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
            \context KnobStaff = "Player 2 Knob 2 Staff" {
                \context KnobVoice = "Player 2 Knob 2 Voice" {
                    {
                        % [Player 2 Knob 2 Voice] Measure 1
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
            \context KnobStaff = "Player 2 Knob 3 Staff" {
                \context KnobVoice = "Player 2 Knob 3 Voice" {
                    {
                        % [Player 2 Knob 3 Voice] Measure 1
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
            \context KnobStaff = "Player 2 Knob 4 Staff" {
                \context KnobVoice = "Player 2 Knob 4 Voice" {
                    {
                        % [Player 2 Knob 4 Voice] Measure 1
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
            \context KeyboardStaff = "Player 3 Keyboard Staff" {
                \context KeyboardVoice = "Player 3 Keyboard Voice" {
                    {
                        % [Player 3 Keyboard Voice] Measure 1
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
            \context KnobStaff = "Player 3 Knob 1 Staff" {
                \context KnobVoice = "Player 3 Knob 1 Voice" {
                    {
                        % [Player 3 Knob 1 Voice] Measure 1
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
            \context KnobStaff = "Player 3 Knob 2 Staff" {
                \context KnobVoice = "Player 3 Knob 2 Voice" {
                    {
                        % [Player 3 Knob 2 Voice] Measure 1
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
            \context KnobStaff = "Player 3 Knob 3 Staff" {
                \context KnobVoice = "Player 3 Knob 3 Voice" {
                    {
                        % [Player 3 Knob 3 Voice] Measure 1
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
            \context KnobStaff = "Player 3 Knob 4 Staff" {
                \context KnobVoice = "Player 3 Knob 4 Voice" {
                    {
                        % [Player 3 Knob 4 Voice] Measure 1
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