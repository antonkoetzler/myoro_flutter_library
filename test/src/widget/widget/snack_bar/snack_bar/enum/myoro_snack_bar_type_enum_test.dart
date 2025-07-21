import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSnackBarTypeEnum.fake', () {
    expect(MyoroSnackBarTypeEnum.values.contains(MyoroSnackBarTypeEnum.fake()), isTrue);
  });

  testWidgets('MyoroSnackBarTypeEnum.getColor', (tester) async {
    late final BuildContext context;
    late final MyoroSnackBarThemeExtension themeExtension;
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();
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
