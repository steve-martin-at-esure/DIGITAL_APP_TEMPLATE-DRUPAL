#!/usr/bin/env sh

# set -e

chmod 0666 web/sites/default/settings.php

cp -r app/modules web \
&& cp -r app/profiles web \
&& cp -r app/sites web \
&& cp -r app/themes web \
&& printf "The drupal site has been updated with the latest dev files.\n"
