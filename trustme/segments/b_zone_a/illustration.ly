\version "2.18.2"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"
\include "../../stylesheets/nonfirst-segment.ily"

\score {
    \new Score <<
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=60
                \time 5/4
                \mark \markup {
                    \concat
                        {
                            \box
                                \pad-around
                                    #0.5
                                    \caps
                                        A
                            " "
                            \fontsize
                                #-3
                                "Zone 1"
                        }
                    }
                s1 * 15
            }
        }
        \context PerformerGroup = "Player 1 Performer Group" \with {
            instrumentName = \markup { "Player 1" }
            shortInstrumentName = \markup { "P. 1" }
        } <<
            \context KeyboardStaff = "Player 1 Keyboard Staff" \with {
                instrumentName = \markup { Kbd. }
                shortInstrumentName = \markup { Kbd. }
            } {
                \bar "||"
                \context KeyboardVoice = "Player 1 Keyboard Voice" {
                    {
                        % [Player 1 Keyboard Voice] Measure 1
                        {
                            c'2.
                            c'2 \repeatTie
                        }
                        % [Player 1 Keyboard Voice] Measure 2
                        {
                            c'4 \repeatTie
                        }
                    }
                    {
                        {
                            d'2
                            d'2 \repeatTie
                        }
                        % [Player 1 Keyboard Voice] Measure 3
                        {
                            d'2. \repeatTie
                        }
                    }
                    {
                        {
                            e'2
                        }
                        % [Player 1 Keyboard Voice] Measure 4
                        {
                            e'2. \repeatTie
                            e'4 \repeatTie
                        }
                    }
                    {
                        {
                            c'4
                        }
                        % [Player 1 Keyboard Voice] Measure 5
                        {
                            c'2. \repeatTie
                            c'2 \repeatTie
                        }
                        % [Player 1 Keyboard Voice] Measure 6
                        {
                            c'2 \repeatTie
                        }
                    }
                    {
                        {
                            d'4
                            d'2 \repeatTie
                        }
                        % [Player 1 Keyboard Voice] Measure 7
                        {
                            d'2. \repeatTie
                            d'4 \repeatTie
                        }
                    }
                    {
                        {
                            e'4
                        }
                        % [Player 1 Keyboard Voice] Measure 8
                        {
                            e'2. \repeatTie
                            e'2 \repeatTie
                        }
                        % [Player 1 Keyboard Voice] Measure 9
                        {
                            e'2. \repeatTie
                        }
                    }
                    {
                        {
                            c'2
                        }
                        % [Player 1 Keyboard Voice] Measure 10
                        {
                            c'2. \repeatTie
                            c'4 \repeatTie
                        }
                    }
                    {
                        {
                            d'4
                        }
                        % [Player 1 Keyboard Voice] Measure 11
                        {
                            d'2. \repeatTie
                            d'2 \repeatTie
                        }
                        % [Player 1 Keyboard Voice] Measure 12
                        {
                            d'2 \repeatTie
                        }
                    }
                    {
                        {
                            r4
                            r2
                        }
                    }
                }
            }
            \context PitchModStaff = "Player 1 Pitch Mod Staff" \with {
                instrumentName = \markup { Pm. }
                shortInstrumentName = \markup { Pm. }
            } {
                \bar "||"
                \context PitchModVoice = "Player 1 Pitch Mod Voice" {
                    {
                        % [Player 1 Pitch Mod Voice] Measure 1
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
            \context KnobStaff = "Player 1 Knob 1 Staff" \with {
                instrumentName = \markup { 1 }
                shortInstrumentName = \markup { 1 }
            } {
                \bar "||"
                \context KnobVoice = "Player 1 Knob 1 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 1 Knob 2 Staff" \with {
                instrumentName = \markup { 2 }
                shortInstrumentName = \markup { 2 }
            } {
                \bar "||"
                \context KnobVoice = "Player 1 Knob 2 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 1 Knob 3 Staff" \with {
                instrumentName = \markup { 3 }
                shortInstrumentName = \markup { 3 }
            } {
                \bar "||"
                \context KnobVoice = "Player 1 Knob 3 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 1 Knob 4 Staff" \with {
                instrumentName = \markup { 4 }
                shortInstrumentName = \markup { 4 }
            } {
                \bar "||"
                \context KnobVoice = "Player 1 Knob 4 Voice" {
                    \makeClusters
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
            \context KeyboardStaff = "Player 2 Keyboard Staff" \with {
                instrumentName = \markup { Kbd. }
                shortInstrumentName = \markup { Kbd. }
            } {
                \bar "||"
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
            \context PitchModStaff = "Player 2 Pitch Mod Staff" \with {
                instrumentName = \markup { Pm. }
                shortInstrumentName = \markup { Pm. }
            } {
                \bar "||"
                \context PitchModVoice = "Player 2 Pitch Mod Voice" {
                    {
                        % [Player 2 Pitch Mod Voice] Measure 1
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
            \context KnobStaff = "Player 2 Knob 1 Staff" \with {
                instrumentName = \markup { 1 }
                shortInstrumentName = \markup { 1 }
            } {
                \bar "||"
                \context KnobVoice = "Player 2 Knob 1 Voice" {
                    \makeClusters
                    {
                        % [Player 2 Knob 1 Voice] Measure 1
                        {
                            <f' g'>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            <f' g'>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 2
                        {
                            <f' c''>8 [
                            \set stemLeftBeamCount = 1
                            <f' e''>8 ]
                        }
                        {
                            <f' g'>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 3
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            <f' e''>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 4
                        {
                            <f' g'>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            <f' g'>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 5
                        {
                            <f' c''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 6
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            <f' e''>8 ]
                        }
                        {
                            <f' g'>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            <f' e''>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 7
                        {
                            <f' g'>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            <f' g'>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 8
                        {
                            <f' c''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 9
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            <f' e''>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 10
                        {
                            <f' g'>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            <f' g'>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 11
                        {
                            <f' c''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' e''>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            <f' c''>8 ]
                        }
                        % [Player 2 Knob 1 Voice] Measure 12
                        {
                            <f' e''>8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' g'>8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <f' c''>8
                            \set stemLeftBeamCount = 1
                            <f' e''>8 ]
                        }
                    }
                    {
                        {
                            r4
                            r2
                        }
                    }
                }
            }
            \context KnobStaff = "Player 2 Knob 2 Staff" \with {
                instrumentName = \markup { 2 }
                shortInstrumentName = \markup { 2 }
            } {
                \bar "||"
                \context KnobVoice = "Player 2 Knob 2 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 2 Knob 3 Staff" \with {
                instrumentName = \markup { 3 }
                shortInstrumentName = \markup { 3 }
            } {
                \bar "||"
                \context KnobVoice = "Player 2 Knob 3 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 2 Knob 4 Staff" \with {
                instrumentName = \markup { 4 }
                shortInstrumentName = \markup { 4 }
            } {
                \bar "||"
                \context KnobVoice = "Player 2 Knob 4 Voice" {
                    \makeClusters
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
            \context KeyboardStaff = "Player 3 Keyboard Staff" \with {
                instrumentName = \markup { Kbd. }
                shortInstrumentName = \markup { Kbd. }
            } {
                \bar "||"
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
            \context PitchModStaff = "Player 3 Pitch Mod Staff" \with {
                instrumentName = \markup { Pm. }
                shortInstrumentName = \markup { Pm. }
            } {
                \bar "||"
                \context PitchModVoice = "Player 3 Pitch Mod Voice" {
                    {
                        % [Player 3 Pitch Mod Voice] Measure 1
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
            \context KnobStaff = "Player 3 Knob 1 Staff" \with {
                instrumentName = \markup { 1 }
                shortInstrumentName = \markup { 1 }
            } {
                \bar "||"
                \context KnobVoice = "Player 3 Knob 1 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 3 Knob 2 Staff" \with {
                instrumentName = \markup { 2 }
                shortInstrumentName = \markup { 2 }
            } {
                \bar "||"
                \context KnobVoice = "Player 3 Knob 2 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 3 Knob 3 Staff" \with {
                instrumentName = \markup { 3 }
                shortInstrumentName = \markup { 3 }
            } {
                \bar "||"
                \context KnobVoice = "Player 3 Knob 3 Voice" {
                    \makeClusters
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
            \context KnobStaff = "Player 3 Knob 4 Staff" \with {
                instrumentName = \markup { 4 }
                shortInstrumentName = \markup { 4 }
            } {
                \bar "||"
                \context KnobVoice = "Player 3 Knob 4 Voice" {
                    \makeClusters
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