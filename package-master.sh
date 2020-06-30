#!/usr/bin/env bash

set -xe
# git merge master
helm lint focused/*
helm dependency update focused/*
helm package focused/*
helm repo index focused/* --url https://focused-labs.github.io/charts
