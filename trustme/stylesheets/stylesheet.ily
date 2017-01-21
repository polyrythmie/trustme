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
        \name DefaultVoice
        \type Engraver_group
        \alias Voice
    }

    \context {
        \Staff
        \name DefaultStaff
        \type Engraver_group
        \alias Staff
        \accepts DefaultVoice
        \remove Time_signature_engraver
    }

    \context {
        \StaffGroup
        \name PerformerGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts DefaultStaff
        \override SystemStartBracket.collapse-height = #0
    }

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts PerformerGroup
        \remove Bar_number_engraver
        \remove Metronome_mark_engraver
        proportionalNotationDuration = #(ly:make-moment 1/8)
        \override SpacingSpanner.uniform-stretching = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        tupletFullLength = ##t
    }
}
