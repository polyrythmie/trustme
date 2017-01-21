# -*- coding: utf-8 -*-

from abjad import set_
from abjad.tools import markuptools
from abjad.tools import scoretools
from abjad.tools import stringtools
import consort


class TrustmeScoreTemplate(consort.ScoreTemplate):

    def __call__(self):
        time_signature_context = scoretools.Context(
            context_name='TimeSignatureContext',
            name='Time Signature Context',
            )

        player_1 = self.make_laptop_performer(name='Player 1', short_name='P. 1')
        player_2 = self.make_laptop_performer(name='Player 2', short_name='P. 2')
        player_3 = self.make_laptop_performer(name='Player 3', short_name='P. 3')

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
        self,
        name,
        short_name,
        ):
        default_voice = scoretools.Voice(
            context_name='DefaultVoice',
            name=name + ' Default Voice',
            )
        default_staff = scoretools.Staff(
            [default_voice],
            context_name='DefaultStaff',
            name=name + ' Default Staff',
            )
        performer_group = scoretools.StaffGroup(
            [default_staff],
            context_name='PerformerGroup',
            name=name + ' Performer Group',
            )
        performer_group.is_simultaneous = True
        manager = set_(performer_group)
        manager.instrument_name = markuptools.Markup(name)
        manager.short_instrument_name = markuptools.Markup(short_name)
        abbreviation = stringtools.to_snake_case(name)
        self._context_name_abbreviations[abbreviation] = default_voice.name
        return performer_group
