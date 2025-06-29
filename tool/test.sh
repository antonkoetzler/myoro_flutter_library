#!/bin/bash
#
# Script to format and fix the files.
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
