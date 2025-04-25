import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroSnackBarWidgetShowcase].
void main() {
  testWidgets('MyoroSnackBarWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroSnackBarWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSnackBarWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroIconTextButton &&
            w.configuration.textConfiguration?.text == 'Click to launch the snack bar.',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<MyoroSnackBarTypeEnum> &&
            w.configuration.label == '[MyoroSnackBar.snackBarType]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroCheckbox && w.label == '[MyoroSnackBar.showCloseButton]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroInput && w.configuration.label == '[MyoroSnackBar.message]',
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroCheckbox && w.label == '[MyoroSnackBar.child] enabled?',
      ),
      findsOneWidget,
    );
  });
}
