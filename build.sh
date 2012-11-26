#!/bin/bash
# Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
# For licensing, see LICENSE.html or http://ckeditor.com/license

#
# README
#
# To build docs you need to have JSDuck installed in your OS,
# so global 'jsduck' script is available.
#
# The easiest way to do this is by standard rubygems:
# $ [sudo] gem install jsduck
#
# For more information, please refer to https://github.com/senchalabs/jsduck#getting-it
#
# Docs will be generated in dev/docs/build/ directory.
#

set -e

echo ""
echo "Building the documentation into the 'build/' directory..."

# Move to the script directory.
cd $(dirname $0)

jsduck --config=config.json $@

echo "Applying customizations..."
cp -r source/resources build
cp source/favicon.ico build
cp -r images build

echo "Finished!"
echo ""
