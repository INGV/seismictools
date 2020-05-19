[![TeamDigitale](https://img.shields.io/badge/publiccode%20compliant-%E2%9C%94-blue.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAAIGNIUk0AAHomAACAhAAA+gAAAIDoAAB1MAAA6mAAADqYAAAXcJy6UTwAAAFxUExURQBmzABmzABmzABkywBkywBmzABmzABmzApszj2L2CyA1QBmzABmzABmzABlzABkywBlzABmzABkywBkywBkyyZ91OXv+qTH7AJlzABlzABmzABlzBJx0Hiu5EyU2wBmzECM2Wil4RRy0CZ91Orz+8/i9W2n4h950gBlzABkyzuJ2Pb6/bbT8AVpzZbA6vX5/TOE1iR80+jx+vn8/uXv+kKO2QBjywBlzA9vz3Cp4kmS2wBlzJbA6vX5/TOE1uvz+7LR8Ch+1AttzgBmzABmzABkywBkywBlzJbA6uz0+6PH7AFlzABmzABmzABlzJbA6jOE1iR70+z0+6TH7AFky5bA6jOF1hx30uPu+c/i9V+f3xl10QBlzABmzABlzIi459/s+TCD1gVpzZ7F7Pb6/evz+0CM2QBjywBmzBd00SV80whrzgBlzBFwzzqJ2DaG1wttzgBmzABmzABlzABlzABmzABmzABkywBkywBmzP///7f5b6EAAAABYktHRHo41YVqAAAAB3RJTUUH4wUWBTMYAFp7MgAAAF50RVh0UmF3IHByb2ZpbGUgdHlwZSBpcHRjAAppcHRjCiAgICAgIDI4CjM4NDI0OTRkMDQwNDAwMDAwMDAwMDAwZjFjMDI2ZTAwMDM1MjQ2NDcxYzAyMDAwMDAyMDAwNDAwCmCaPZ4AAAClSURBVAjXY2DAChiZmFlYwSw2EMHOwcnFzcPAwMvHLyAoJCwiKiYuISnFIC0jKyevoKikrKKqpq7BoKmlraOrp29gaGRsYmrGYG5haWVtY2tnaO/g6OTMwOvi6ubuAeR6enn7+IJMZfXztw0IDAoOkZaCcEP1w8IjIqOiY0Dc2Lj4hMSk5JTUtHSwOzIys7JzcvPyCwrB7ioqLiktMy+vqPRFczoAaG4fQ5lQVPsAAAAldEVYdGRhdGU6Y3JlYXRlADIwMTktMDUtMjJUMDU6NTE6MjQtMDQ6MDDV7wZaAAAAJXRFWHRkYXRlOm1vZGlmeQAyMDE5LTA1LTIyVDA1OjUxOjI0LTA0OjAwpLK+5gAAAABJRU5ErkJggg==)](https://developers.italia.it/it/software/ingv-seismictools)

[![License](https://img.shields.io/github/license/INGV/seismictools.svg)](https://github.com/INGV/seismictools/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/INGV/seismictools.svg)](https://github.com/INGV/seismictools/issues)
[![Join the #general channel](https://img.shields.io/badge/Slack%20channel-%23general-blue.svg)](https://ingv-institute.slack.com/messages/CKS902Y5B)
[![Get invited](https://slack.developers.italia.it/badge.svg)](https://join.slack.com/t/ingv-institute/shared_invite/zt-ckoji8va-mutwycltiCw_EAhUWSND8Q)

# seismictools [![Version](https://img.shields.io/badge/dynamic/yaml?label=ver&query=softwareVersion&url=https://raw.githubusercontent.com/INGV/seismictools/master/publiccode.yml)](https://github.com/INGV/seismictools/blob/master/publiccode.yml) [![CircleCI](https://circleci.com/gh/INGV/seismictools/tree/master.svg?style=svg)](https://circleci.com/gh/INGV/seismictools/tree/master)

This Docker contains seismic tools like:
- qmerge
- stationxml-converter 

## Quickstart
### Build docker
Clone this repository, then:

```
$ cd seismictools
$ docker build --tag seismictools . 
```

in case of errors, try:
```
$ docker build --no-cache --pull --tag seismictools . 
```

### Run docker
Running the command below to see the **help**:
```
$ docker run -it --rm seismictools /bin/bash 

# Contribute
Please, feel free to contribute.

# Author
(c) 2019 Valentino Lauciani valentino.lauciani[at]ingv.it

Istituto Nazionale di Geofisica e Vulcanologia, Italia
