#!/usr/bin/env bash

config=$(pwd)

# Hyper
rm ~/.hyper.js
ln -s "${config}/.hyper.js" ~/
