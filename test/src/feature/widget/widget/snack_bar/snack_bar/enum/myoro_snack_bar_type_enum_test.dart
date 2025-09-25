import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroSnackBarTypeEnum.getColor', (tester) async {
    late final BuildContext context;
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroSnackBarThemeExtension.builder(colorScheme, textTheme);
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(MyoroSnackBarTypeEnum.standard.getColor(context), themeExtension.standardBorderColor);
    expect(MyoroSnackBarTypeEnum.attention.getColor(context), themeExtension.attentionBorderColor);
    expect(MyoroSnackBarTypeEnum.success.getColor(context), themeExtension.successBorderColor);
    expect(MyoroSnackBarTypeEnum.error.getColor(context), themeExtension.errorBorderColor);
  });

  test('MyoroSnackBarTypeEnum getters', () {
    expect(MyoroSnackBarTypeEnum.standard.isStandard, isTrue);
    expect(MyoroSnackBarTypeEnum.attention.isAttention, isTrue);
    expect(MyoroSnackBarTypeEnum.success.isSuccess, isTrue);
    expect(MyoroSnackBarTypeEnum.error.isError, isTrue);
  });
}
