#!/bin/sh
# Ensure dependencies are setup

git submodule init
git submodule update --init --recursive --remote
