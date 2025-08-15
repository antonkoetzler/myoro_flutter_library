import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroInputStyleEnum.getBorder', (tester) async {
    late final BuildContext context;
    late final MyoroInputThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(MyoroInputStyleEnum.underlined.getBorder(context), themeExtension.underlinedBorder);
    expect(MyoroInputStyleEnum.outlined.getBorder(context), themeExtension.outlinedBorder);
    expect(MyoroInputStyleEnum.none.getBorder(context), themeExtension.noneBorder);
  });

  test('MyoroInputStyleEnum getters', () {
    expect(MyoroInputStyleEnum.underlined.isUnderlined, isTrue);
    expect(MyoroInputStyleEnum.outlined.isOutlined, isTrue);
    expect(MyoroInputStyleEnum.none.isNone, isTrue);
  });
}
