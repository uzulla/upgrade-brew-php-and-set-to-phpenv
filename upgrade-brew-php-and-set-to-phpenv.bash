#!/usr/bin/env bash

brew upgrade php

PHPENV=`which phpenv`
PHPENV_VERSIONS_DIR=`echo $PHPENV | sed -e 's/bin\/phpenv//'`versions/
echo $PHPENV_VERSIONS_DIR;

BREW_PHP_DIR=`brew ls php |grep -e '/bin/php$' | sed -e 's/\/bin\/php//'`
BREW_PHP_VERSION=`echo $BREW_PHP_DIR  | perl -ne '/([0-9]\.[0-9]\.[0-9])/; print $1;'`
echo $BREW_PHP_VERSION

phpenv global $BREW_PHP_VERSION

