import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroDialogModalWidgetShowcase].
void main() {
  testWidgets('MyoroDialogModalWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
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
      MyoroIconTextHoverButton.finder(
        text: 'Click to launch the modal.',
        textEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroDialogModal._invertButtons]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(
        label: '[MyoroDialogModal.confirmButtonText]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(
        label: '[MyoroDialogModal._cancelButtonText]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(
        label: '[MyoroDialogModal.text]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<TextStyle>(
        label: '[MyoroDialogModal.textStyle]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroDialogModal._child] not null?',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
