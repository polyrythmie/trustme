#(set-default-paper-size "letter" 'portrait)
#(set-global-staff-size 12)

\header {
}

\paper {
}

\layout {

    \context {
        \name TimeSignatureContext
        \type Engraver_group
    }

    \context {
        \Voice
        \name KeyboardVoice
        \type Engraver_group
        \alias Voice
    }

    \context {
        \Voice
        \name PitchModVoice
        \type Engraver_group
        \alias Voice
    }

    \context {
        \Voice
        \name KnobVoice
        \type Engraver_group
        \alias Voice
    }

    \context {
        \Staff
        \remove Time_signature_engraver
    }

    \context {
        \Staff
        \name KeyboardStaff
        \type Engraver_group
        \alias Staff
        \accepts KeyboardVoice
    }

    \context {
        \Staff
        \name PitchModStaff
        \type Engraver_group
        \alias Staff
        \accepts PitchModVoice
        \override StaffSymbol.line-positions = #'(-4.6 4.6)
        \override ClusterSpanner.padding = 0.25
    }

    \context {
        \Staff
        \name KnobStaff
        \type Engraver_group
        \alias Staff
        \accepts KnobVoice
        \override StaffSymbol.line-positions = #'(-4.6 4.6)
        \override ClusterSpanner.padding = 0.25
    }

    \context {
        \StaffGroup
        \name PerformerGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts KeyboardStaff
        \accepts PitchModStaff
        \accepts KnobStaff
        \override SystemStartBracket.collapse-height = #0
    }

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts PerformerGroup
        \remove Bar_number_engraver
        \remove Metronome_mark_engraver
        proportionalNotationDuration = #(ly:make-moment 1/20)
        \override SpacingSpanner.uniform-stretching = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        tupletFullLength = ##t
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
    }
}
