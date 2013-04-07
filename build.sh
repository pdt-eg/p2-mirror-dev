#!/bin/sh

set -e

mvn clean install
mvn clean install -P packageRepo
s3cmd put --recursive org.pex.p2-mirror.mirror/target/repository s3://pdt-extensions/development/
