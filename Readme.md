# Jenkins (EEA) slave ready to run Docker image (Jenkins Swarm Plugin)

Docker images for Jenkins slave based on Jenkins Swarm Plugin.

See base image [eeacms/jenkins-slave](https://hub.docker.com/r/eeacms/jenkins-master) for a lighter image and info on how to use this image.

This image is generic, thus you can obviously re-use it within your non-related EEA projects.

## Supported tags and respective Dockerfile links

- [`:latest`  (*Dockerfile*)](https://github.com/eea/eea.docker.jenkins.slave-eea/blob/master/Dockerfile)
- [`:2.0` (*Dockerfile*)](https://github.com/eea/eea.docker.jenkins.slave-eea/blob/master/Dockerfile)

## Changes

- [CHANGELOG.md](https://github.com/eea/eea.docker.jenkins.slave-eea/blob/master/CHANGELOG.md)

## Base docker image

- [hub.docker.com](https://registry.hub.docker.com/u/eeacms/jenkins-slave-eea)

## Source code

- [github.com](http://github.com/eea/eea.docker.jenkins.slave-eea)

## Installation

1. Install [Docker](https://www.docker.com/).
2. Install [Docker Compose](https://docs.docker.com/compose/).

## Usage

    $ docker run eeacms/jenkins-slave-eea

See base image [eeacms/jenkins-slave](https://hub.docker.com/r/eeacms/jenkins-master) for more options.

## Copyright and license

The Initial Owner of the Original Code is European Environment Agency (EEA).
All Rights Reserved.

The Original Code is free software;
you can redistribute it and/or modify it under the terms of the GNU
General Public License as published by the Free Software Foundation;
either version 2 of the License, or (at your option) any later
version.

## Funding

[European Environment Agency (EU)](http://eea.europa.eu)
