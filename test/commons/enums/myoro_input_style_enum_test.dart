import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroInputStyleEnum].
void main() {
  testWidgets(
    'MyoroInputStyleEnum.getBorder',
    (WidgetTester tester) async {
      late final BuildContext context;
      late final MyoroInputThemeExtension themeExtension;

      await tester.pumpWidget(
        MyoroWidgetTester(
          child: Builder(
            builder: (BuildContext buildContext) {
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
    },
  );

  test('MyoroInputStyleEnum getters', () {
    expect(MyoroInputStyleEnum.underlined.isUnderlined, isTrue);
    expect(MyoroInputStyleEnum.outlined.isOutlined, isTrue);
  });

  test('MyoroInputStyleEnum.fake', () {
    expect(
      MyoroInputStyleEnum.values.contains(MyoroInputStyleEnum.fake()),
      isTrue,
    );
  });
}
