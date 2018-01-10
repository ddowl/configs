#!/bin/sh
# NOTE: Assumes you are running from checkout dir

git submodule init
git submodule update --recursive --remote
