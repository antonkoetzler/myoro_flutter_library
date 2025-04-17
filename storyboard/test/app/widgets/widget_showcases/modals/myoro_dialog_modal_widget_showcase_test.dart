import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroDialogModalWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroDialogModalWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroDialogModalWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(
      find.widgetWithText(
        MyoroIconTextHoverButton,
        'Click to launch the modal.',
      ),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(MyoroCheckbox, '[MyoroDialogModal._invertButtons]'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(MyoroInput, '[MyoroDialogModal.confirmButtonText]'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(MyoroInput, '[MyoroDialogModal._cancelButtonText]'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(MyoroInput, '[MyoroDialogModal.text]'),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<TextStyle> &&
            w.configuration.label == '[MyoroDialogModal.textStyle]',
      ),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(MyoroCheckbox, '[MyoroDialogModal._child] not null?'),
      findsOneWidget,
    );
  });
}
