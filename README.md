PDT Extension Group P2 mirror (Development Snapshot)
====================================================

[![Build Status](https://secure.travis-ci.org/pdt-eg/p2-mirror-dev.png)](http://travis-ci.org/pdt-eg/p2-mirror-dev)

A mirror for various p2 repositories a.k.a eclipse updatesites to provide a centralized repository for
all your PDT needs.

__WARNING__: This repository hosts development snapshots of each updatesite if it's available.
The stable mirror has not been released yet.

### The current URL:

[http://p2-dev.pdt-extensions.org/](http://p2-dev.pdt-extensions.org/)

### Contributing your updatesite

If you want to add your updatesite to the mirror follow these steps:

1. Fork the repo
2. Add your repository URL to the `<repositories>` node in `org.pex.p2-mirror.aggregator/pom.xml`
3. Add your feature(s) to a corresponding category by adding a `<feature>` node to `org.pex.p2-mirror.mirror/category.xml`
4. Send us a pull request


### Building the repo


#### Clone the necessary repos

You can use this shell script for initializing the repos:

```
    git clone https://github.com/pulse00/Composer-Eclipse-Plugin.git && cd Composer-Eclipse-Plugin && /usr/bin/git submodule init && /usr/bin/git submodule update && cd ..
    git clone https://github.com/pdt-eg/Core-Plugin.git PEX-Core
    git clone https://github.com/pdt-eg/p2-mirror-dev.git
    git clone -b gh-pages https://github.com/pdt-eg/p2-mirror-dev.git p2-mirror-dev-repo
```

1. In `p2-mirror-dev` run `mvn clean install`
2. In `p2-mirror-dev` run `mvn clean install -P packageRepo` (the 2nd step is necessary due to a bug in tycho)
3. This will result in a working p2 repository in `p2-mirror-dev.git`


To create a cronjob which publishes the mirror to a github page, use the following script

```shell
#!/bin/sh

## stop the script if any command fails
set -e

## set this to the directory where you initialized the repositories
BASEPATH=/path/to/repositories

## the git binary
GIT=/usr/bin/git

## the mvn binary
MVN=/usr/bin/mvn

## the commit message for the gh-pages branch in the repo
MESSAGE="automatic repo update"

## pull the latest changes
cd $BASEPATH/Composer-Eclipse-Plugin
$GIT pull origin master

cd $BASEPATH/PEX-Core
$GIT pull origin master

cd $BASEPATH/p2-mirror-dev
$GIT pull origin master

## build the mirror-repository
$MVN -Dsurefire.memory="-Xmx512m" clean install
$MVN -Dsurefire.memory="-Xmx512m" -P packageRepo clean install

## deploy to the github page
cd $BASEPATH/p2-mirror-dev-repo
$GIT add . && $GIT commit -a -m $MESSAGE
$GIT push origin gh-pages
```
