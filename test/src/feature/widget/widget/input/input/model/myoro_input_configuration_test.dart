import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroInputConfiguration.getBorder', (tester) async {
    late final BuildContext context;
    late final MyoroInputThemeExtension inputThemeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    final configurationWithBorder = MyoroInputConfiguration.fake().copyWith(border: myoroFake<InputBorder>());
    final configurationWithoutBorder = MyoroInputConfiguration.fake().copyWith(borderProvided: false);

    expect(configurationWithBorder.getBorder(context), configurationWithBorder.border);
    expect(configurationWithoutBorder.getBorder(context), switch (configurationWithoutBorder.inputStyle) {
      MyoroInputStyleEnum.underlined => inputThemeExtension.underlinedBorder,
      MyoroInputStyleEnum.outlined => inputThemeExtension.outlinedBorder,
      MyoroInputStyleEnum.none => inputThemeExtension.noneBorder,
    });
  });
}
