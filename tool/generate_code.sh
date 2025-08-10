#!/bin/bash
#
# Script to run the Dart build_runner to generate the auto-generated code.
dart run build_runner build
cd storyboard
dart run build_runner build
cd ..
bash tool/format_and_fix.sh
