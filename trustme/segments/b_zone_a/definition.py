# -*- coding: utf-8 -*-
import abjad
import consort
import trustme

segment_maker = trustme.tools.TrustmeSegmentMaker(
    desired_duration_in_seconds=60,
    name='Zone 1',
    permitted_time_signatures=[(5, 4)],
    tempo=abjad.indicatortools.Tempo(
        abjad.durationtools.Duration(1, 4),
        60,
        ),
    )

# PLAYER 1
# player_1_keyboard (Frequency 0.1-0.15)
# Step size: 0.00625 over two octaves, c' = 0Hz, c'' = 0.15Hz
player_1_keyboard = consort.MusicSpecifierSequence(
    music_specifiers=[
        consort.MusicSpecifier(
            pitch_handler=consort.AbsolutePitchHandler(
                pitch_specifier="c'",
                ),
            ),
        consort.MusicSpecifier(
            pitch_handler=consort.AbsolutePitchHandler(
                pitch_specifier="d'",
                ),
            ),
        consort.MusicSpecifier(
            pitch_handler=consort.AbsolutePitchHandler(
                pitch_specifier="e'",
                ),
            ),
        ],
    )

# PLAYER 2
# player_2_keyboard (AP 600+)
# player_2_knob_1 (Frequency 20-300Hz)
player_2_knob_1 = consort.MusicSpecifier(
    pitch_handler=consort.AbsolutePitchHandler(
        logical_tie_expressions=(
            consort.ChordExpression("f' g'"),
            consort.ChordExpression("f' c''"),
            consort.ChordExpression("f' e''"),
            ),
        ),
    rhythm_maker=abjad.rhythmmakertools.EvenDivisionRhythmMaker(),
    )
# player_2_knob_2 (Power)


# PLAYER 3
# player_3_keyboard (Mod 0.1-0.7)
# player_3_knob1 (Frequency ~2250Hz)


segment_maker.add_setting(
    timespan_maker=consort.TaleaTimespanMaker(
        playing_talea=abjad.rhythmmakertools.Talea(
            counts=[6, 7, 6, 8, 7, 9, 6, 8],
            denominator=4,
            ),
        playing_groupings=(1,),
        silence_talea=abjad.rhythmmakertools.Talea(
            counts=[0],
            denominator=4,
            ),
        ),
    player_1_keyboard=player_1_keyboard,
    player_2_knob_1=player_2_knob_1,
    )
