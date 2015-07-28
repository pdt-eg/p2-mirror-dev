PDT Extension Group P2 mirror
=============================

[![Build Status](https://secure.travis-ci.org/pdt-eg/p2-mirror-dev.png)](http://travis-ci.org/pdt-eg/p2-mirror-dev)

A mirror for various p2 repositories a.k.a eclipse updatesites to provide a centralized repository for 
all your PDT needs.

### The current URL:

[http://p2.pdt-extensions.org/](http://p2.pdt-extensions.org/)

### Contributing your updatesite

If you want to add your updatesite to the mirror follow these steps:

1. Fork the repo
2. Copy _empty.b3aggrcon and fill with new repository
3. Add contributions tag to mirror.b3aggr
3. Add your feature via [b3 editor](https://wiki.eclipse.org/Eclipse_b3/aggregator/manual)
4. Send us a pull request


### Building the repo

1. Clone this repository
2. Run `mvn clean install`
3. This will result in a working p2 repository in `mirror/final`
