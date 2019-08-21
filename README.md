# Matplotlib 3.1.1 with Python 3.7.3 on Alpine Linux 3.10.2

[![](https://img.shields.io/docker/build/bxio/matplotlib-minimal.svg?style=popout)](https://hub.docker.com/r/bxio/matplotlib-minimal)
[![](https://img.shields.io/docker/pulls/bxio/matplotlib-minimal.svg?style=popout)](https://hub.docker.com/r/bxio/matplotlib-minimal)
[![](https://img.shields.io/microbadger/image-size/bxio%2Fmatplotlib-minimal.svg?style=popout)](https://hub.docker.com/r/bxio/matplotlib-minimal)

### Description

This repository provides a Dockerfile for building and image for Matplotlib 3.1.1 with Python 3.7. Matplotlib is compiled from its [PyPI source](https://pypi.org/project/matplotlib/) using [pip](https://pip.pypa.io/en/stable/).

The Docker image is based on the latest [Alpine Linux](https://alpinelinux.org) version for size optimization (~140MB). It uses [Alpine packages](https://pkgs.alpinelinux.org/packages) from the main and community repos.

Older builds can be found under different docker image tags.

### Configuration

Matplotlib compiled with the following configuration:

```text
    Edit setup.cfg to change the build options

    BUILDING MATPLOTLIB
                matplotlib: yes [3.1.1]
                    python: yes [3.7.3 (default, Apr 17 2019, 11:48:37) [GCC 8.3.0]]
                  platform: yes [linux]

    REQUIRED DEPENDENCIES AND EXTENSIONS
                     numpy: yes [version 1.16.4]
          install_requires: yes [handled by setuptools]
                    libagg: yes [pkg-config information for 'libagg' could not
                            be found. Using local copy.]
                  freetype: yes [version 2.10.0]
                       png: yes [version 1.6.37]
                     qhull: yes [pkg-config information for 'libqhull' could not
                            be found. Using local copy.]

    OPTIONAL SUBPACKAGES
               sample_data: yes [installing]
                  toolkits: yes [installing]
                     tests: no  [skipping due to configuration]
            toolkits_tests: no  [skipping due to configuration]

    OPTIONAL BACKEND EXTENSIONS
                       agg: yes [installing]
                     tkagg: yes [installing; run-time loading from Python Tcl /
                            Tk]
                    macosx: no  [Mac OS-X only]
                 windowing: no  [Microsoft Windows only]

    OPTIONAL PACKAGE DATA
                      dlls: no  [skipping due to configuration]

```

### Download

To get the image, run ``docker pull bxio/matplotlib-minimal``


### License

[![MIT](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

