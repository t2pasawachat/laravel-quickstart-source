#!/bin/bash

DIR="/workshop/workshops-day1/07_PhpUnit/laravel-quickstart"
if [ ! -d $DIR/web/vendor ]
then
    docker run -i --rm -v "$DIR/web:/app" 3dsinteractive/composer:7.1 install
else
    docker run -i --rm -v "$DIR/web:/app" 3dsinteractive/composer:7.1 update
fi
