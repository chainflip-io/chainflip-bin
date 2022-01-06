#!/bin/bash

dir=chainflip-$1
mkdir $dir
cp bin/* $dir
tar -czvf chainflip.tar.gz $dir