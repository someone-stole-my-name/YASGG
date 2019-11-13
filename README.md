# YASGG

## Overview

YASGG is a gallery generator based on the beautiful lens template by [html5up][html5up_website].

## Prerequisites

- [git][git_tool]
- [docker][docker_tool] / [podman][podman_tool]

## Getting Started

Start by cloning YASGG and html5up-lens:

```shell
$ git clone https://github.com/someone-stole-my-name/YASGG.git
$ cd YASGG
$ git clone https://github.com/someone-stole-my-name/html5up-lens.git
```

Build the image:

```shell
$ docker build -t yasgg .
```

### Generate the gallery

```shell
$ GALLERY=/home/Christian/Pictures
$ YASGG=$(pwd)
$ docker run --rm -v $GALLERY:/gallery -v $YASGG:/YASGG yasgg /YASGG/YASGG --pictures $GALLERY
```

If using `podman` rootless container you may have to relabel. See [Release Notes 1.6.0][podman_tool_1.6.0_Release_Notes].

### Preview

```shell
$ SITE=$(pwd)/_site
$ docker run --rm -v $SITE:/usr/share/nginx/html:ro -d nginx:latest
```

[docker_tool]:https://docs.docker.com/install/
[git_tool]:https://git-scm.com/downloads
[html5up_website]:https://html5up.net/
[podman_tool]:https://github.com/containers/libpod/blob/master/install.md
[podman_tool_1.6.0_Release_Notes]:https://github.com/containers/libpod/blob/master/RELEASE_NOTES.md#160