WickedFoxLights.github.io

This is the source for the website WickedFoxLights (originally GlenmontLights.github.io).

# How to build

The website is built and edited locally with [Ghost](https://ghost.org/), then converted to static files for hosting
on GitHub. This is... admittedly a questionable practice, but hey, it works well for me and, since I really like the
Ghost ecosystem and, well, this is my website, that's really all that matters.

## Requirements

* [NodeJS](https://nodejs.org/en/download/). I believe version 8 or higher; shouldn't be an issue.
* [gssg](https://github.com/Fried-Chicken/ghost-static-site-generator). This generates a static site from a Ghost blog.
* A Ghost installation running at the address ghost.unraid.sjhome.net. I expect this to be the case for approx 1 in 7 billion people.

## Building

### Makefile
The makefile is the easiest way to build the site. Just running `make` will generate the artifacts and overwrite the local copy of this repo.

### gssg
If you _really_ want to run `gssg` locally, use the following arguments
* `--url <base url of production site>` (https://glenmontlights.github.io)
* `--domain <domain of local Ghost installation` (http://ghost.unraid.sjhome.net)
* `--dest <subdir in repo where the static site should be generated>` (docs)

You will also have to manually copy `docs/404/index.html` to `docs/404.html` to retain not found functionality
