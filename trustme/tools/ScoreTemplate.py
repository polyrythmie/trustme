# -*- coding: utf-8 -*-
from abjad import set_
from abjad.tools import markuptools
from abjad.tools import scoretools
import consort


class ScoreTemplate(consort.ScoreTemplate):

    def __call__(self):
        time_signature_context = scoretools.Context(
            context_name='TimeSignatureContext',
            name='Time Signature Context',
            )

        player_1 = self.make_laptop_performer('Player 1', 'P. 1')
        player_2 = self.make_laptop_performer('Player 2', 'P. 2')
        player_3 = self.make_laptop_performer('Player 3', 'P. 3')
        score = scoretools.Score(
            [
                time_signature_context,
                player_1,
                player_2,
                player_3,
                ],
            )
        return score

    def make_laptop_performer(
        name,
        short_name,
        ):
        performer_group = scoretools.StaffGroup(
            context_name='PerformerGroup',
            name=name + ' Performer Group',
            )
        performer_group.is_simultaneous = True
        manager = set_(performer_group)
        manager.instrument_name = markuptools.Markup(name)
        manager.short_instrument_name = markuptools.Markup(short_name)
        return performer_group
