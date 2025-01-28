import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Sanity test of [createStoryboardThemeExtensions].
void main() {
  test('createStoryboardThemeExtensions', () {
    expect(
      createStoryboardThemeExtensions(
        createMyoroColorScheme(faker.randomGenerator.boolean()),
        createMyoroTextTheme(faker.randomGenerator.boolean()),
      ).length,
      33,
    );
  });
}
