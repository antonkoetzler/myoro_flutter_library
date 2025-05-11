import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final modalConfiguration = MyoroModalConfiguration.fake();

  void sharedExpects(
    MyoroDialogModalConfiguration dialogModalConfiguration,
    MyoroDialogModalThemeExtension dialogModalThemeExtension,
    MyoroModalThemeExtension modalThemeExtension,
    bool isText,
  ) {
    expect(find.byType(MyoroModal), findsOneWidget);
    expect(find.byType(MyoroDialogModal), findsOneWidget);

    // [MyoroDialogModal].
    expect(
      find.byWidgetPredicate((Widget w) => w is Column && w.children.length == 2),
      findsOneWidget,
    );

    // [_Message].
    if (isText) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is Text &&
              w.data == dialogModalConfiguration.text &&
              w.style ==
                  (dialogModalConfiguration.textStyle ?? dialogModalThemeExtension.textStyle),
        ),
        findsOneWidget,
      );
    } else {
      // [MyoroRadio] inserted in [test].
      expect(find.byType(MyoroRadio), findsOneWidget);
    }

    // [_FooterButtons].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Align &&
            w.alignment == Alignment.bottomRight &&
            w.child is IntrinsicWidth &&
            (w.child as IntrinsicWidth).child is Row &&
            ((w.child as IntrinsicWidth).child as Row).mainAxisSize == MainAxisSize.min &&
            ((w.child as IntrinsicWidth).child as Row).children.length == 2 &&
            ((w.child as IntrinsicWidth).child as Row).children.first is Flexible &&
            ((w.child as IntrinsicWidth).child as Row).children.last is Flexible,
      ),
      findsOneWidget,
    );

    // [_ConfirmButton].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroIconTextButton &&
            w.configuration.textConfiguration?.text ==
                (dialogModalConfiguration.confirmButtonText ?? 'Confirm') &&
            w.configuration.buttonConfiguration?.onTapUp != null,
      ),
      findsOneWidget,
    );

    // [_CancelButton].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroIconTextButton &&
            w.configuration.textConfiguration?.text ==
                (dialogModalConfiguration.cancelButtonText ?? 'Cancel') &&
            w.configuration.buttonConfiguration?.onTapUp != null,
      ),
      findsOneWidget,
    );
  }

  Future<void> test(WidgetTester tester, {required bool isText}) async {
    late final BuildContext context;

    bool onConfirmPressed = false;
    bool onCancelPressed = false;

    final dialogModalConfiguration = MyoroDialogModalConfiguration.fake().copyWith(
      onConfirm: () => onConfirmPressed = true,
      onCancel: () => onCancelPressed = true,
      text: isText ? faker.lorem.word() : '',
      child: isText ? null : const MyoroRadio(),
      childProvided: !isText,
    );

    final key = UniqueKey();
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext buildContext) {
            context = buildContext;

            return GestureDetector(
              key: key,
              onTap: () {
                MyoroDialogModal.show(
                  context,
                  modalConfiguration: modalConfiguration,
                  dialogModalConfiguration: dialogModalConfiguration,
                );
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(key));
    await tester.pumpAndSettle();

    // Pressing [_ConfirmButton] & [_CancelButton].
    await tester.tap(find.text(dialogModalConfiguration.confirmButtonText ?? 'Confirm'));
    await tester.tap(find.text(dialogModalConfiguration.cancelButtonText ?? 'Cancel'));
    await tester.pump();
    expect(onConfirmPressed, onCancelPressed);

    sharedExpects(
      dialogModalConfiguration,
      context.resolveThemeExtension<MyoroDialogModalThemeExtension>(),
      context.resolveThemeExtension<MyoroModalThemeExtension>(),
      isText,
    );
  }

  setUpAll(() {
    MyoroTypographyDesignSystem.isDarkMode = faker.randomGenerator.boolean();
  });

  testWidgets(
    'MyoroDialogModal with simple configuration (using [text] & [textStyle])',
    (WidgetTester tester) async => await test(tester, isText: true),
  );

  testWidgets(
    'MyoroDialogModal with standard configuration (using [child])',
    (WidgetTester tester) async => await test(tester, isText: false),
  );
}
