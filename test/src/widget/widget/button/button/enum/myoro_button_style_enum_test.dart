import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  const primary = MyoroButtonStyleEnum.primary;
  const secondary = MyoroButtonStyleEnum.secondary;

  Future<void> testCase(WidgetTester tester, void Function(BuildContext, MyoroButtonThemeExtension) callback) async {
    late final BuildContext context;
    late final MyoroButtonThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            themeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    callback(context, themeExtension);
  }

  testWidgets('MyoroButtonStyleEnum.border', (tester) async {
    await testCase(
      tester,
      (context, themeExtension) => expect(MyoroButtonStyleEnum.border(context), themeExtension.border),
    );
  });

  testWidgets('MyoroButtonStyleEnum.backgroundColorBuilder', (tester) async {
    await testCase(tester, (context, themeExtension) {
      // [MyoroButtonStyleEnum.primary]
      expect(
        primary.backgroundColorBuilder(context, MyoroTapStatusEnum.idle, onTapProvided: false),
        themeExtension.primaryIdleBackgroundColor,
      );
      expect(
        primary.backgroundColorBuilder(context, MyoroTapStatusEnum.idle, onTapProvided: true),
        themeExtension.primaryIdleBackgroundColor,
      );
      expect(
        primary.backgroundColorBuilder(context, MyoroTapStatusEnum.hover, onTapProvided: true),
        themeExtension.primaryHoverBackgroundColor,
      );
      expect(
        primary.backgroundColorBuilder(context, MyoroTapStatusEnum.tap, onTapProvided: true),
        themeExtension.primaryTapBackgroundColor,
      );

      // [MyoroButtonStyleEnum.secondary]
      expect(
        secondary.backgroundColorBuilder(context, MyoroTapStatusEnum.idle, onTapProvided: false),
        themeExtension.secondaryIdleBackgroundColor,
      );
      expect(
        secondary.backgroundColorBuilder(context, MyoroTapStatusEnum.idle, onTapProvided: true),
        themeExtension.secondaryIdleBackgroundColor,
      );
      expect(
        secondary.backgroundColorBuilder(context, MyoroTapStatusEnum.hover, onTapProvided: true),
        themeExtension.secondaryHoverBackgroundColor,
      );
      expect(
        secondary.backgroundColorBuilder(context, MyoroTapStatusEnum.tap, onTapProvided: true),
        themeExtension.secondaryTapBackgroundColor,
      );
    });
  });

  testWidgets('MyoroButtonStyleEnum.contentColorBuilder', (tester) async {
    await testCase(tester, (context, themeExtension) {
      // [MyoroButtonStyleEnum.primary]
      expect(primary.contentColorBuilder(context, MyoroTapStatusEnum.idle), themeExtension.primaryIdleContentColor);
      expect(primary.contentColorBuilder(context, MyoroTapStatusEnum.hover), themeExtension.primaryHoverContentColor);
      expect(primary.contentColorBuilder(context, MyoroTapStatusEnum.tap), themeExtension.primaryTapContentColor);

      // [MyoroButtonStyleEnum.secondary].
      expect(secondary.contentColorBuilder(context, MyoroTapStatusEnum.idle), themeExtension.secondaryIdleContentColor);
      expect(
        secondary.contentColorBuilder(context, MyoroTapStatusEnum.hover),
        themeExtension.secondaryHoverContentColor,
      );
      expect(secondary.contentColorBuilder(context, MyoroTapStatusEnum.tap), themeExtension.secondaryTapContentColor);
    });
  });

  test('MyoroButtonStyleEnum getters', () {
    expect(MyoroButtonStyleEnum.primary.isPrimary, isTrue);
    expect(MyoroButtonStyleEnum.secondary.isSecondary, isTrue);
  });
}
