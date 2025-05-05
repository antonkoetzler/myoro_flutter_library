import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final bool isDarkMode = faker.randomGenerator.boolean();

  setUp(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
  });

  test('MainModule.themeExtensionsBuilder', () {
    final themeExtensions = const MainModule().themeExtensionsBuilder(
      createMyoroColorScheme(isDarkMode),
      createMyoroTextTheme(isDarkMode),
    );
    expect(themeExtensions.length, 1);
    expect(themeExtensions.first is MainScreenThemeExtension, isTrue);
  });
}
