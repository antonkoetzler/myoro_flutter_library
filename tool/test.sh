#!/bin/bash
#
# Script to format and fix the files, excluding generated .g.dart files.
flutter test --coverage
# Remove all .g.dart entries from the lcov report
lcov --remove coverage/lcov.info 'lib/src/mock/*' -o coverage/lcov.filtered.info
# Generate HTML from the filtered report
genhtml coverage/lcov.filtered.info -o coverage/html
