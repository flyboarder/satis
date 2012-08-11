#!/bin/bash
PHP=php

echo 'Download the composer.phar file, so the vendors can be installed from the distributed composer.json.'
if [ ! -f composer.phar ]
    then
        curl -s -O http://getcomposer.org/composer.phar
fi

echo 'Install the needed vendors for this application.'
$PHP composer.phar install --verbose

echo 'Build Satis Repo.'
$PHP bin/satis build airos_config.json web/