PDT Extension Group P2 mirror
=============================

A mirror for various p2 repositories a.k.a eclipse updatesites to provide a centralized repository for 
all your PDT needs.

### The current URL:

[http://p2-dev.pdt-extensions.org/](http://p2-dev.pdt-extensions.org/)

### Contributing your updatesite

If you want to add your updatesite to the mirror follow these steps:

1. Fork the repo
2. Add your repository URL to the `<repositories>` node in `org.pex.p2-mirror.aggregator/pom.xml`
3. Add your feature(s) to a corresponding category by adding a `<feature>` node to `org.pex.p2-mirror.mirror/pom.xml`
4. Send us a pull request


### Building the repo

1. Clone this repository
2. Run `mvn clean install`
3. Run `mvn clean install -P packageRepo` (the 2nd step is necessary due to a bug in tycho)
4. This will result in a working p2 repository in `org.pex.p2-mirror.mirror/target/repository`
