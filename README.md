[![Build Image](https://github.com/orenskl/HiFiStreamer/actions/workflows/makefile.yml/badge.svg)](https://github.com/orenskl/HiFiStreamer/actions/workflows/makefile.yml)

# HiFiStreamer

HiFiStreamer is an attempt to setup and build a full Audiophile network streaming device software based Linux with a JeOS concept, the main objective for this project is pure audio **Bit Perfect** sound reproduction from the source to the sink (from the network to the DAC). The project currently uses [Mopidy](https://mopidy.com) as its audio network streamer and [Mopidy-Iris](https://github.com/jaedb/Iris) as the UI. The first implementation will support generic x86 devices and hopefully I will add ARM in the future. 

This project is based on the [LibreELEC](https://libreelec.tv) JeOS disribution.

**Building and Installing**

To build HiFiStreamer you will need a Ubuntu 20.04 build machine, clone the repo and run :

`PROJECT=Generic ARCH=x86_64 make image`

At the end of the build you should have an `img` file in the `target` directory, burn the image to a USB stick.

More building information and installation can be found on the [LibreELEC Wiki](https://wiki.libreelec.tv)

**Contribution**

This whole project was not possible with the great effort and contribuiton to the open source community of the good people at [LibreELEC](https://libreelec.tv) - kudos to all of you.
