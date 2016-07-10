# dockerfile-trusty-build-nodejs

[![Build Status](https://travis-ci.org/infOpen/dockerfile-trusty-build-nodejs.svg?branch=master)](https://travis-ci.org/infOpen/dockerfile-trusty-build-nodejs)

Dockerfile used to build a base jenkins slave image used to build ubuntu packages for javascript apps

## Warning

We use gosu to build packages with a non root user.
To be used with jenkins user, need to set setuid so take care about commands
launch in container with gosu.

