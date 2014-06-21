PDT Extension Group p2 repository (nightly)
===========================================

Composite p2 repo hosting artifacts from the pdt extension group (including PDT/DLTK dev builds).

## Build process

- [external-mirror](https://github.com/pdt-eg/external-mirror) aggregates [3rd-party](https://github.com/pdt-eg/external-mirror/blob/master/org.pex.p2-mirror.aggregator/pom.xml) features and builds a local [pex repo](https://github.com/pdt-eg/external-mirror/tree/master/org.pex.p2-mirror.repo) in the first [build step](https://ci.pdt-extensions.org/view/P2/job/external-mirror/)
- The 2nd build step [re-categorizes](https://github.com/pdt-eg/external-mirror/tree/master/org.pex.p2-mirror.mirror) 3rd party and pex features into a common p2 repo
- Using [composite artifacts](https://github.com/pdt-eg/p2-mirror-dev/blob/gh-pages/compositeContent.xml), the p2-mirror-dev creates the actual p2 repo for end-users, containing the mirrored 3rd-party features, pex features and PDT/Dltk nightlies.




