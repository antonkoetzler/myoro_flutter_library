import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final configuration = MyoroIconTextButtonConfiguration.fake();

  testWidgets('MyoroIconTextButton', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroIconTextButton(configuration: configuration)),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroIconTextButton), findsOneWidget);
    expect(find.byType(MyoroButton), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == configuration.padding &&
            w.child is Row &&
            (w.child as Row).mainAxisSize == MainAxisSize.min &&
            (w.child as Row).spacing == configuration.spacing,
      ),
      findsOneWidget,
    );
  });
}
