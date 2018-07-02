#!/usr/bin/env bash
./init-ios-openssl.sh arm64
./init-ios.sh arm64
cd ios
./compile-openssl.sh clean
./compile-ffmpeg.sh clean
./compile-openssl.sh arm64
./compile-ffmpeg.sh arm64
xcodebuild build -project IJKMediaDemo/IJKMediaDemo.xcodeproj -scheme IJKMediaFramework -configuration Release -sdk iphoneos VALID_ARCHS=arm64
