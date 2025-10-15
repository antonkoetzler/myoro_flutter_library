#!/bin/bash
#
# Script to install all dependencies and generate all build_runner code to setup MyoroFlutterLibrary.
rm -f pubspec.lock
flutter clean
flutter pub get
cd storybook
rm -f pubspec.lock
flutter clean
flutter pub get
cd ..
cd example
rm -f pubspec.lock
flutter clean
flutter pub get
cd ..
bash tool/generate_code.sh