#!/bin/bash

# $PWD is mounted android system image

# vendor mv cannot move cross device link
unlink bin/mv
ln -s busybox xbin/mv
