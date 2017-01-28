# -*- coding: utf-8 -*-
from abjad import attach
from abjad import set_
from abjad.tools import indicatortools
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

    def make_knob_staff(
        self,
        player_name,
        number,
        ):
        assert number > 0
        number = str(number)
        knob_voice = scoretools.Voice(
            context_name='KnobVoice',
            name=player_name + ' Knob ' + number + ' Voice',
            )
        makeClusters = indicatortools.LilyPondCommand("makeClusters")
        attach(makeClusters, knob_voice)
        knob_staff = scoretools.Staff(
            [knob_voice],
            context_name='KnobStaff',
            name=player_name + ' Knob ' + number + ' Staff',
            )
        manager = set_(knob_staff)
        manager.instrument_name = markuptools.Markup(number)
        manager.short_instrument_name = markuptools.Markup(number)
        abbreviation = stringtools.to_snake_case(player_name)
        self._context_name_abbreviations[abbreviation + '_knob_' + number] = knob_voice.name
        return knob_staff

    def make_laptop_performer(
        self,
        name,
        short_name,
        ):
        keyboard_voice = scoretools.Voice(
            context_name='KeyboardVoice',
            name=name + ' Keyboard Voice',
            )
        keyboard_staff = scoretools.Staff(
            [keyboard_voice],
            context_name='KeyboardStaff',
            name=name + ' Keyboard Staff',
            )
        manager = set_(keyboard_staff)
        manager.instrument_name = markuptools.Markup('Kbd.')
        manager.short_instrument_name = markuptools.Markup('Kbd.')
        abbreviation = stringtools.to_snake_case(name)
        self._context_name_abbreviations[abbreviation + '_keyboard'] = keyboard_voice.name

        pitchmod_voice = scoretools.Voice(
            context_name='PitchModVoice',
            name=name + ' Pitch Mod Voice',
            )
        pitchmod_staff = scoretools.Staff(
            [pitchmod_voice],
            context_name='PitchModStaff',
            name=name + ' Pitch Mod Staff',
            )
        manager = set_(pitchmod_staff)
        manager.instrument_name = markuptools.Markup('Pm.')
        manager.short_instrument_name = markuptools.Markup('Pm.')
        abbreviation = stringtools.to_snake_case(name)
        self._context_name_abbreviations[abbreviation + '_pitch_mod'] = pitchmod_voice.name

        knob_1_staff = self.make_knob_staff(name, 1)
        knob_2_staff = self.make_knob_staff(name, 2)
        knob_3_staff = self.make_knob_staff(name, 3)
        knob_4_staff = self.make_knob_staff(name, 4)

        performer_group = scoretools.StaffGroup(
            [
                keyboard_staff,
                pitchmod_staff,
                knob_1_staff,
                knob_2_staff,
                knob_3_staff,
                knob_4_staff,
                ],
            context_name='PerformerGroup',
            name=name + ' Performer Group',
            )
        performer_group.is_simultaneous = True
        manager = set_(performer_group)
        manager.instrument_name = markuptools.Markup(name)
        manager.short_instrument_name = markuptools.Markup(short_name)
        return performer_group
