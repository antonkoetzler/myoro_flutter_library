#!/bin/bash
#
# Script to install all dependencies and generate all build_runner code to setup MyoroFlutterLibrary.
flutter pub cache clean --force
flutter upgrade
flutter clean
flutter pub get
cd storyboard
flutter clean
flutter pub get
cd ..
bash tool/generate_code.sh