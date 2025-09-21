import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('createMyoroTextSelectionThemeData', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final textSelectionThemeData = createMyoroTextSelectionThemeData(colorScheme);
    final translucentOnPrimary = colorScheme.onPrimary.withValues(alpha: 0.3);

    expect(textSelectionThemeData.cursorColor, colorScheme.onPrimary);
    expect(textSelectionThemeData.selectionColor, translucentOnPrimary);
    expect(textSelectionThemeData.selectionHandleColor, translucentOnPrimary);
  });
}
