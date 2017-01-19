#!/usr/bin/env python
import setuptools


if __name__ == '__main__':
    setuptools.setup(
        author='Ryn El Faqsa',
        author_email='rynelfa9sa@gmail.com',
        install_requires = (
            'abjad',
            'consort',
            ),
        name='trustme',
        packages=(
            'trustme',
            ),
        url='https://github.com/username/trustme',
        version='0.1',
        zip_safe=False,
        )
