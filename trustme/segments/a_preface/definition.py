# -*- coding: utf-8 -*-
import abjad
import consort
import trustme

segment_maker = trustme.tools.TrustmeSegmentMaker(
    desired_duration_in_seconds=60,
    name='Preface',
    permitted_time_signatures=[(5, 4)],
    tempo=abjad.indicatortools.Tempo(
        abjad.durationtools.Duration(1, 4),
        60,
        ),
    )

# START THE CLOCKS

clock_start_in_seconds = 10

clock_start_timespan = abjad.timespantools.Timespan(
    start_offset=0,
    stop_offset=abjad.durationtools.Offset(clock_start_in_seconds, 4),
    )

# won't show because I silenced everything. Need to create a new voice for text
# markings.
clock_start_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        clock_start=consort.AttachmentExpression(
            attachments=abjad.markuptools.Markup('Start Clock', direction=Up),
            selector=abjad.selectortools.Selector(),
            ),
        ),
    rhythm_maker=abjad.rhythmmakertools.NoteRhythmMaker(
        division_masks=[abjad.rhythmmakertools.silence_all(
            use_multimeasure_rests=True,
            )],
        ),
    )

segment_maker.add_setting(
    timespan_identifier=clock_start_timespan,
    player_1_keyboard=clock_start_specifier,
    player_2_keyboard=clock_start_specifier,
    player_3_keyboard=clock_start_specifier,
    )

# BEGIN
#
# segment_maker.add_setting(
#     timespan_identifier=abjad.timespantools.Timespan(
#         start_offset=clock_start_timespan.stop_offset,
#         stop_offset=None,
#         ),
#     timespan_maker=consort.FloodedTimespanMaker(),
#     player_1=consort.MusicSpecifier(
#         rhythm_maker=abjad.rhythmmakertools.NoteRhythmMaker(),
#         ),
#     )
