// Simple script to run `dart format` and `dart fix`.

import 'dart:io';

void main() async {
  const lineLength = 80;

  stdout.write('Formatting and fixing files...');

  // Run dart format
  final formatResult = await Process.run(
    'dart',
    ['format', '.', '--line-length=$lineLength'],
  );
  stdout.write(formatResult.stdout);
  stderr.write(formatResult.stderr);

  // Run dart fix
  final fixResult = await Process.run(
    'dart',
    ['fix', '--apply'],
  );
  stdout.write(fixResult.stdout);
  stderr.write(fixResult.stderr);
}
