#!/usr/bin/env bash

git merge master
helm package .
helm repo index . --url https://focused-labs.github.io/etherpad-helm/
