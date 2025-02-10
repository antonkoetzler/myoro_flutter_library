import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroDialogModal].
void main() {
  final MyoroModalConfiguration configuration = MyoroModalConfiguration.fake();
  final bool invertButtons = faker.randomGenerator.boolean();
  final String? confirmButtonText = faker.randomGenerator.boolean() ? faker.randomGenerator.string(10) : null;
  final String? cancelButtonText = faker.randomGenerator.boolean() ? faker.randomGenerator.string(10) : null;
  final String text = faker.lorem.word();
  late final TextStyle? textStyle;

  void sharedExpects(
    MyoroDialogModalThemeExtension dialogModalThemeExtension,
    MyoroModalThemeExtension modalThemeExtension, [
    bool isText = false,
    bool isWidget = false,
  ]) {
    assert(isText ^ isWidget);

    expect(find.byType(MyoroModal), findsOneWidget);
    expect(find.byType(MyoroDialogModal), findsOneWidget);

    // [MyoroDialogModal].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Column &&
            w.children.length == 3 &&
            w.children.first is Expanded &&
            // (w.children.first as Expanded).child is _Message &&
            w.children[1] is SizedBox &&
            (w.children[1] as SizedBox).height == modalThemeExtension.spacing,
        // w.children.last is _FooterButtons,
      ),
      findsOneWidget,
    );

    // [_Message].
    if (isText) {
      expect(
        find.byWidgetPredicate(
          (Widget w) => w is Text && w.data == text && w.style == (textStyle ?? dialogModalThemeExtension.textStyle),
        ),
        findsOneWidget,
      );
    }
    if (isWidget) {
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
            ((w.child as IntrinsicWidth).child as Row).children.length == 3 &&
            ((w.child as IntrinsicWidth).child as Row).children.first is Flexible &&
            ((w.child as IntrinsicWidth).child as Row).children[1] is SizedBox &&
            (((w.child as IntrinsicWidth).child as Row).children[1] as SizedBox).width == dialogModalThemeExtension.footerButtonsSpacing &&
            ((w.child as IntrinsicWidth).child as Row).children.last is Flexible,
      ),
      findsOneWidget,
    );

    // [_ConfirmButton].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroIconTextHoverButton && w.text == (confirmButtonText ?? 'Confirm') && w.onPressed != null,
      ),
      findsOneWidget,
    );

    // [_CancelButton].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroIconTextHoverButton && w.text == (cancelButtonText ?? 'Cancel') && w.onPressed != null,
      ),
      findsOneWidget,
    );
  }

  Future<void> test(
    WidgetTester tester, {
    bool isText = false,
    bool isWidget = false,
  }) async {
    late final BuildContext context;

    bool onConfirmPressed = false;
    bool onCancelPressed = false;

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
                  configuration: configuration,
                  invertButtons: invertButtons,
                  confirmButtonText: confirmButtonText,
                  cancelButtonText: cancelButtonText,
                  onConfirm: () => onConfirmPressed = true,
                  onCancel: () => onCancelPressed = true,
                  text: isText ? text : null,
                  textStyle: textStyle,
                  child: isWidget ? const MyoroRadio() : null,
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
    await tester.tap(find.text(confirmButtonText ?? 'Confirm'));
    await tester.tap(find.text(cancelButtonText ?? 'Cancel'));
    await tester.pump();
    expect(onConfirmPressed, onCancelPressed);

    sharedExpects(
      context.resolveThemeExtension<MyoroDialogModalThemeExtension>(),
      context.resolveThemeExtension<MyoroModalThemeExtension>(),
      isText,
      isWidget,
    );
  }

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    textStyle = faker.randomGenerator.boolean() ? MyoroTypographyTheme.instance.randomTextStyle : null;
  });

  testWidgets(
    'MyoroDialogModal with simple configuration (using [text] & [textStyle])',
    (WidgetTester tester) async => await test(tester, isText: true),
  );

  testWidgets(
    'MyoroDialogModal with standard configuration (using [child])',
    (WidgetTester tester) async => await test(tester, isWidget: true),
  );
}
