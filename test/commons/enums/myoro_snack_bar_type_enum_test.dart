import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroSnackBarTypeEnum].
void main() {
  testWidgets(
    'MyoroSnackBarTypeEnum.getBorderColor',
    (WidgetTester tester) async {
      late final BuildContext context;
      late final MyoroSnackBarThemeExtension themeExtension;

      await tester.pumpWidget(
        MyoroWidgetTester(
          child: Builder(
            builder: (BuildContext buildContext) {
              context = buildContext;
              themeExtension =
                  context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
              return const SizedBox.shrink();
            },
          ),
        ),
      );

      expect(
        MyoroSnackBarTypeEnum.standard.getBorderColor(context),
        themeExtension.standardBorderColor,
      );
      expect(
        MyoroSnackBarTypeEnum.attention.getBorderColor(context),
        themeExtension.attentionBorderColor,
      );
      expect(
        MyoroSnackBarTypeEnum.success.getBorderColor(context),
        themeExtension.successBorderColor,
      );
      expect(
        MyoroSnackBarTypeEnum.error.getBorderColor(context),
        themeExtension.errorBorderColor,
      );
    },
  );

  test('MyoroSnackBarTypeEnum getters', () {
    expect(MyoroSnackBarTypeEnum.standard.isStandard, isTrue);
    expect(MyoroSnackBarTypeEnum.attention.isAttention, isTrue);
    expect(MyoroSnackBarTypeEnum.success.isSuccess, isTrue);
    expect(MyoroSnackBarTypeEnum.error.isError, isTrue);
  });

  test('MyoroSnackBarTypeEnum.fake', () {
    expect(
      MyoroSnackBarTypeEnum.values.contains(
        MyoroSnackBarTypeEnum.fake(),
      ),
      isTrue,
    );
  });
}
