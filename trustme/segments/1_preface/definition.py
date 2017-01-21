# -*- coding: utf-8 -*-
import abjad
import consort
import trustme

segment_maker = trustme.tools.TrustmeSegmentMaker(
    desired_duration_in_seconds=60,
    name='Preface',
    permitted_time_signatures=[(4, 4)],
    tempo=abjad.indicatortools.Tempo(
        abjad.durationtools.Duration(1, 4),
        60,
        ),
    )

segment_maker.add_setting(
    timespan_maker=consort.FloodedTimespanMaker(),
    player_1=consort.MusicSpecifier(
        rhythm_maker=abjad.rhythmmakertools.NoteRhythmMaker(),
        ),
    )
