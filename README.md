# DIGITAL APP TEMPLATE - DRUPAL

This Digital App is a 'template' for developing other Drupal 8 Digital Apps. The contents of this MD file (and the others found within this repo) outline some of the key elements you should be looking to include when documenting your new Digital App.
 
Please esure you fork off this GIT repository before you start developing your new Digital App.


## Prerequisites
- Linux (or Mac for development)
- [Docker](https://docker.com)
- [Docker Compose](https://docs.docker.com/compose/)
- A local installation of [composer](http://getcomposer.org/)
- (Development Only) [NPM](https://www.npmjs.org/) and [Grunt](http://gruntjs.com)

## Installing
(From the root directory)

```
Development
./scripts/install/install_dev.sh

Test or Production
./scripts/install/install.sh
```

## Usage
Once the Digital App has been installed it can be accessed via the web browser:

```
For Development
http://localhost:8082/

For Test or Production
http://[NAME_OF_HOST_SERVER]/
```

## Overview
This Digital App consists of the following components:

* **app**: This folder is where you place your 'pre-processed' development code. Files within this folder strcuture will be processed and placed within the 'web' folder. More detail on this Digital App's architecture and components can be found [here](app/README.md).
* **container**: This folder contains all of the Docker 'container' configuration files used by Docker; e.g. PHP config, etc. This is executed by the Dockerfile when the container is built or updated. You will need to rebuild/update the Docker container for any changes in this area to take affect.
* **scripts**: This folder contains a number of scripts required to run, deploy and develop this Digital App. Further details on the scripts available can be found [here](scripts/README.md)
* **testing**: This folder contains details on how to testing this Digital App. Further details on the tests available can be found [here](testing/README.md)
*  **web**: _(Requires Install)_ Once the Digital App is installed this folder will contain the 'working' version of the site. This is the folder used by Drupal 8.
*  **vendor**: _(Requires Install)_ This folder contains the packages installed by Composer.
*  **node_modules**: _(Requires Install)_ This folder contains the packages installed by NPM.

## Contributing to this Digital App
Only esure's Digital Apps team is permitted to update this Digital App. If you have any suggestions or if you find an issue then please contact the team. Please see [AUTHORS.md](AUTHORS.md) for details of the team.

For details on contributing best practices please see the [CONTRIBUTING.md](CONTRIBUTING.md) file.

## Systems Documentation
All systems documentation for this Digital App is located on [Confluence](https://myesure.atlassian.net/wiki/).
