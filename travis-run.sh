#!/usr/bin/env bash

# Exit on errors.
set -e

./init-ios-openssl.sh
./init-ios.sh
cd ios
./compile-openssl.sh clean
./compile-ffmpeg.sh clean
./compile-openssl.sh
./compile-ffmpeg.sh
