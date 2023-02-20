[![Build Image](https://github.com/orenskl/HiFiStreamer/actions/workflows/makefile.yml/badge.svg)](https://github.com/orenskl/HiFiStreamer/actions/workflows/makefile.yml)

# HiFiStreamer

HiFiStreamer is an attempt to setup and build a full Audiophile network streaming device software based Linux with a JeOS concept, the main objective for this project is pure audio **Bit Perfect** sound reproduction from the source to the sink (from the network to the DAC). The project currently uses [Mopidy](https://mopidy.com) as its audio network streamer and [Mopidy-Iris](https://github.com/jaedb/Iris) as the UI, there is also support for **Tidal** streaming via [Mopidy-Tidal](https://github.com/tehkillerbee/mopidy-tidal). The first implementation will support generic x86 devices and hopefully I will add ARM (RPi) in the future. 

This project is based on the [LibreELEC](https://libreelec.tv) JeOS disribution.

## Building

To build HiFiStreamer you will need a Ubuntu 20.04 build machine, clone the repo and run :

`PROJECT=Generic ARCH=x86_64 make image`

At the end of the build you should have an `img` file in the `target` directory, burn the image to a USB stick.

More building information and installation can be found on the [LibreELEC Wiki](https://wiki.libreelec.tv)

## Installing

You will need to flash the image file (`.img.gz`) to a USB stick, this can be done either with the [LibreELEC tool](https://libreelec.tv/downloads/) or [Balena ETECHER](https://www.balena.io/etcher).

## Usage 

After installation and booting the Iris UI should appear on the display, you can also
access it via a browser here `http://hifistreamer:6680/iris`.

## Setup

Currently the only way to access the config files is via `SSH` or `SMB`.

All the configuration files can be found in the SMB `Configfiles` share.

The root password is `hifistreamer`, all the config files are in the `/storage/.config` directory.

### Mopidy

The Mopidy config file is in `/storage/.config/mopidy/mopidy.conf`.

Please consult the [Mopidy documentation](https://docs.mopidy.com/en/latest/) for configuration options.

**A NOTE on Tidal** : If you enable Tidal please be aware you will have to attach the device to your Tidal account (currently you will need access to the Mopidy logs for that - more info can be found [here](https://github.com/tehkillerbee/mopidy-tidal#plugin-configuration)

### ALSA

The ALSA configuraion file is in `/storage/.config/asound.conf`

## Contribution

This whole project was not possible with the great effort and contribuiton to the open source community of the good people at [LibreELEC](https://libreelec.tv) - kudos to all of you.
