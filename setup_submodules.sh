#!/bin/sh
# Ensure dependencies are setup

git submodule update
git submodule update --init --recursive --remote
