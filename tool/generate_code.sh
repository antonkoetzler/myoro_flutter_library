#!/bin/bash
#
# Script to run the Dart build_runner to generate the auto-generated code.
dart run build_runner build --delete-conflicting-outputs
cd storybook
dart run build_runner build --delete-conflicting-outputs
cd ..
bash tool/format_and_fix.sh
