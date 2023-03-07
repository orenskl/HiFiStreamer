# HiFiStreamer

HiFiStreamer is an attempt to setup and build a full Audiophile network streaming device software based Linux with a JeOS concept, the main objective for this project is pure audio **Bit Perfect** sound reproduction from the source to the sink (from the network to the DAC). The project currently uses [Mopidy](https://mopidy.com) as its audio network streamer and [Mopidy-Iris](https://github.com/jaedb/Iris) as the UI, there is also support for **TIDAL** streaming via [Mopidy-Tidal](https://github.com/tehkillerbee/mopidy-tidal). The first implementation will support generic x86 devices and hopefully I will add ARM (RPi) in the future. 

This project is based on the [LibreELEC](https://libreelec.tv) JeOS disribution.

## Building

To build HiFiStreamer you will need a Ubuntu 20.04 build machine, clone the repo and run :

`PROJECT=Generic ARCH=x86_64 make image`

At the end of the build you should have an `img` file in the `target` directory, burn the image to a USB stick.

More building information and installation can be found on the [LibreELEC Wiki](https://wiki.libreelec.tv)

## Installing

You will need to flash the image file (`.img.gz`) to a USB stick, this can be done either with the [LibreELEC tool](https://libreelec.tv/downloads/) or [Balena ETECHER](https://www.balena.io/etcher).

## Usage 

After installation and booting the UI should appear on the display, you can also
access it via a browser here `http://hifistreamer`. The UI is composed of two tabs
at the lower left of the screen:
- **Player**: This is the Mopidy-Iris UI.
    - Please note when you first login to the system you will have to setupa Mopidy-Iris connection, just press the ***submit*** button to go to the player UI.
    - The rest of the Mopidy-Iris UI is self explanatory, if you need any assistance please go to [Mopidy-Iris](https://github.com/jaedb/Iris)
- **System**: this is the HiFiStreamer settings application, on the left there is the main navigation bar which consissts of :
    - **Audio**: setting the Audio Output device.
    - **Streaming**: Enabel streaming services (currently only **TIDAL** is supported).
        - To enabled **TIDAL** press the radio button, you will be presented with a QR code and a link to authenticate with **TIDAL**. You can either scan the QR code or copy paste the link to another windows (or device) and authenticate your **TIDAL** subscription - This will require a **TIDAL HiFi Plus** Subscription - and then you are ready to go.
    - **About**: General informationm screen.

## Setup

If you want to tweak more advacned options then the only way to access the config files is via `SSH` or `SMB`.

All the configuration files can be found in the SMB `Configfiles` share.

The root password is `hifistreamer`, all the config files are in the `/storage/.config` directory.

## Mopidy

The Mopidy config file is in `/storage/.config/mopidy/mopidy.conf`.

Please consult the [Mopidy documentation](https://docs.mopidy.com/en/latest/) for configuration options.

## Contribution

This whole project was not possible with the great effort and contribuiton to the open source community of the good people at [LibreELEC](https://libreelec.tv) - kudos to all of you.
