# -*- coding: utf-8 -*-

segment_maker = trustme.tools.TrustmeSegmentMaker(
    desired_duration_in_seconds=60,
    name='Zone 3',
    permitted_time_signatures=[(5, 4)],
    tempo=abjad.indicatortools.Tempo(
        abjad.durationtools.Duration(1, 4),
        60,
        ),
    )

# PLAYER 1

# PLAYER 2
# player_2_keyboard (Frequency: 0-400)
# player_2_knob_1 (Frequency descent to 0 time)

# PLAYER 3
