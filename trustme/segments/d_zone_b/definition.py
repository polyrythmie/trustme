# -*- coding: utf-8 -*-

segment_maker = trustme.tools.TrustmeSegmentMaker(
    desired_duration_in_seconds=60,
    name='Zone 2',
    permitted_time_signatures=[(5, 4)],
    tempo=abjad.indicatortools.Tempo(
        abjad.durationtools.Duration(1, 4),
        60,
        ),
    )

# PLAYER 1
# player_1_keyboard (AP)
# player_1_pitchbend (Frequency/Power)
# player_1_knob_1 (Mod 0.2-0.8)

# PLAYER 2
# player_2_knob_1 (Mod 0.4-0.6)
# player_2_knob_2 (LP 40->5)
# player_2_knob_3 (AP 400-1000)
# player_2_knob_4 (APG: 0-0.6)

# PLAYER 3
# player_3_keyboard (Frequency 100Hz, jumps to ~300 Hz)
# player_3_pitchbend (bend frequency down to 100Hz)
