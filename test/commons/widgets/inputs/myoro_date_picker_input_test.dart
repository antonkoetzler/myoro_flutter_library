import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroDatePickerInput].
void main() {
  final configuration = MyoroInputConfiguration.fake();

  testWidgets('MyoroDatePickerInput', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroDatePickerInput(configuration: configuration),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroInput), findsOneWidget);

    // Wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Stack &&
            w.children.length == 2 &&
            w.children.last is Positioned,
      ),
      findsOneWidget,
    );

    // [_Input].
    expect(find.byType(MyoroInput), findsOneWidget);

    // [_TriggerArea].
    expect(find.byType(ListenableBuilder), findsAtLeastNWidgets(1));
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.child is InkWell &&
            (w.child as InkWell).focusColor == MyoroColorTheme.transparent &&
            (w.child as InkWell).hoverColor == MyoroColorTheme.transparent &&
            (w.child as InkWell).splashColor == MyoroColorTheme.transparent &&
            (w.child as InkWell).highlightColor ==
                MyoroColorTheme.transparent &&
            (w.child as InkWell).child is MyoroLayoutBuilder,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate((Widget w) => w is SizedBox && w.height == 43.1),
      findsOneWidget,
    );
  });
}
