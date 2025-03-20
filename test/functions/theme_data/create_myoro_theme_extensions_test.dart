import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [createMyoroThemeExtensions].
void main() {
  final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
  final textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());

  test('createMyoroThemeExtensions', () {
    final themeExtensions = createMyoroThemeExtensions(colorScheme, textTheme);

    expect(
      themeExtensions.length,
      [
        ...createMyoroAppBarThemeExtensions(colorScheme),
        ...createMyoroButtonThemeExtensions(colorScheme, textTheme),
        ...createMyoroCardThemeExtensions(colorScheme, textTheme),
        ...createMyoroCarouselThemeExtensions(),
        ...createMyoroCheckboxThemeExtensions(colorScheme, textTheme),
        ...createMyoroDividerThemeExtensions(colorScheme),
        ...createMyoroDrawerThemeExtension(colorScheme, textTheme),
        ...createMyoroDropdownThemeExtensions(textTheme),
        ...createMyoroFormThemeExtensions(),
        ...createMyoroGraphThemeExtensions(colorScheme, textTheme),
        ...createMyoroInputThemeExtensions(colorScheme, textTheme),
        ...createMyoroLayoutBuilderThemeExtensions(),
        ...createMyoroLoaderThemeExtensions(colorScheme),
        ...createMyoroMaterialAppThemeExtensions(),
        ...createMyoroMenuThemeExtensions(colorScheme, textTheme),
        ...createMyoroModalThemeExtensions(colorScheme, textTheme),
        ...createMyoroRadioThemeExtensions(colorScheme, textTheme),
        ...createMyoroResolverThemeExtensions(),
        ...createMyoroScreenThemeExtensions(),
        ...createMyoroSliderThemeExtensions(textTheme),
        ...createMyoroSnackBarThemeExtensions(colorScheme, textTheme),
        ...createMyoroTableThemeExtensions(colorScheme, textTheme),
        ...createMyoroTooltipThemeExtensions(),
      ].length,
    );
  });

  test(
    'createAppBarThemeExtensions',
    () => expect(createMyoroAppBarThemeExtensions(colorScheme).length, 1),
  );
  test(
    'createMyoroButtonThemeExtensions',
    () => expect(
      createMyoroButtonThemeExtensions(colorScheme, textTheme).length,
      2,
    ),
  );
  test(
    'createMyoroCardThemeExtensions',
    () => expect(
      createMyoroCardThemeExtensions(colorScheme, textTheme).length,
      1,
    ),
  );
  test(
    'createMyoroCarouselThemeExtensions',
    () => expect(createMyoroCarouselThemeExtensions().length, 1),
  );
  test(
    'createMyoroCheckboxThemeExtensions',
    () => expect(
      createMyoroCheckboxThemeExtensions(colorScheme, textTheme).length,
      2,
    ),
  );
  test(
    'createMyoroDividerThemeExtensions',
    () => expect(createMyoroDividerThemeExtensions(colorScheme).length, 2),
  );
  test(
    'createMyoroDropdownThemeExtensions',
    () => expect(createMyoroDropdownThemeExtensions(textTheme).length, 1),
  );
  test(
    'createMyoroDrawerThemeExtension',
    () => expect(
      createMyoroDrawerThemeExtension(colorScheme, textTheme).length,
      1,
    ),
  );
  test(
    'createMyoroFormThemeExtensions',
    () => expect(createMyoroFormThemeExtensions().length, 1),
  );
  test(
    'createMyoroGraphThemeExtensions',
    () => expect(
      createMyoroGraphThemeExtensions(colorScheme, textTheme).length,
      2,
    ),
  );
  test(
    'createMyoroInputThemeExtensions',
    () => expect(
      createMyoroInputThemeExtensions(colorScheme, textTheme).length,
      3,
    ),
  );
  test(
    'createMyoroLayoutBuilderThemeExtensions',
    () => expect(createMyoroLayoutBuilderThemeExtensions().length, 1),
  );
  test(
    'createMyoroLoaderThemeExtensions',
    () => expect(createMyoroLoaderThemeExtensions(colorScheme).length, 1),
  );
  test(
    'createMyoroMaterialAppThemeExtensions',
    () => expect(createMyoroMaterialAppThemeExtensions().length, 1),
  );
  test(
    'createMyoroMenuThemeExtensions',
    () => expect(
      createMyoroMenuThemeExtensions(colorScheme, textTheme).length,
      1,
    ),
  );
  test(
    'createMyoroModalThemeExtensions',
    () => expect(
      createMyoroModalThemeExtensions(colorScheme, textTheme).length,
      2,
    ),
  );
  test(
    'createMyoroRadioThemeExtensions',
    () => expect(
      createMyoroRadioThemeExtensions(colorScheme, textTheme).length,
      2,
    ),
  );
  test(
    'createMyoroResolverThemeExtensions',
    () => expect(createMyoroResolverThemeExtensions().length, 1),
  );
  test(
    'createMyoroScreenThemeExtensions',
    () => expect(createMyoroScreenThemeExtensions().length, 1),
  );
  test(
    'createMyoroSliderThemeExtensions',
    () => expect(createMyoroSliderThemeExtensions(textTheme).length, 1),
  );
  test(
    'createMyoroSnackBarThemeExtensions',
    () => expect(
      createMyoroSnackBarThemeExtensions(colorScheme, textTheme).length,
      2,
    ),
  );
  test(
    'createMyoroTableThemeExtensions',
    () => expect(
      createMyoroTableThemeExtensions(colorScheme, textTheme).length,
      1,
    ),
  );
  test(
    'createMyoroTooltipThemeExtensions',
    () => expect(createMyoroTooltipThemeExtensions().length, 1),
  );
}
