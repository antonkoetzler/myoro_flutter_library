import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroBasicDivider].
void main() {
  final configuration = MyoroBasicDividerConfiguration.fake();

  testWidgets('MyoroBasicDivider', (WidgetTester tester) async {
    late final MyoroBasicDividerThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context
                .resolveThemeExtension<MyoroBasicDividerThemeExtension>();

            return MyoroBasicDivider(
              configuration: configuration,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroBasicDivider), findsOneWidget);

    // Contents.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == (configuration.padding ?? EdgeInsets.zero) &&
            w.child is Container &&
            (w.child as Container).color == themeExtension.color,
      ),
      findsOneWidget,
    );
  });
}
