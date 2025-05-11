import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroTooltip].
void main() {
  final configuration = MyoroTooltipConfiguration.fake();

  testWidgets('MyoroTooltip', (WidgetTester tester) async {
    late final MyoroTooltipThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroTooltipThemeExtension>();
            return MyoroTooltip(configuration: configuration);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroTooltip), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Tooltip &&
            w.message == configuration.text &&
            w.waitDuration == configuration.waitDuration &&
            w.margin == (configuration.margin ?? themeExtension.margin) &&
            w.child is SizedBox,
      ),
      findsOneWidget,
    );
  });
}
