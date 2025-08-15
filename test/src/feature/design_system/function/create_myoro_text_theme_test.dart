import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('createMyoroTextTheme', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final typography = MyoroTypography(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);

    /// Regular.
    expect(textTheme.bodyLarge, typography.regular.large);
    expect(textTheme.bodyMedium, typography.regular.medium);
    expect(textTheme.bodySmall, typography.regular.small);

    /// Italic.
    expect(textTheme.headlineLarge, typography.italic.large);
    expect(textTheme.headlineMedium, typography.italic.medium);
    expect(textTheme.headlineSmall, typography.italic.small);

    /// Semi bold.
    expect(textTheme.labelLarge, typography.semiBold.large);
    expect(textTheme.labelMedium, typography.semiBold.medium);
    expect(textTheme.labelSmall, typography.semiBold.small);

    /// Bold.
    expect(textTheme.titleLarge, typography.bold.large);
    expect(textTheme.titleMedium, typography.bold.medium);
    expect(textTheme.titleSmall, typography.bold.small);

    /// Extra bold.
    expect(textTheme.displayLarge, typography.extraBold.large);
    expect(textTheme.displayMedium, typography.extraBold.medium);
    expect(textTheme.displaySmall, typography.extraBold.small);
  });
}
