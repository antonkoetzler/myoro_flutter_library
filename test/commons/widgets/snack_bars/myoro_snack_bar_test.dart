import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroSnackBar].
void main() {
  final MyoroSnackBarTypeEnum snackBarType = MyoroSnackBarTypeEnum.fake();
  final bool showCloseButton = faker.randomGenerator.boolean();
  final String message = faker.lorem.word();
  const Widget child = MyoroRadio();

  Future<BuildContext> pumpWidget(
    WidgetTester tester, {
    bool isUsingMessage = false,
    bool isUsingChild = false,
  }) async {
    assert(isUsingMessage ^ isUsingChild);

    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext buildContext) {
            context = buildContext;

            return MyoroSnackBar(
              snackBarType: snackBarType,
              showCloseButton: showCloseButton,
              message: isUsingMessage ? message : '',
              child: isUsingChild ? child : null,
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    return context;
  }

  void expectCalls(
    BuildContext context, {
    bool isUsingMessage = false,
    bool isUsingChild = false,
  }) {
    assert(isUsingMessage ^ isUsingChild);

    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    expect(find.byType(MyoroSnackBar), findsOneWidget);

    // [MyoroSnackBar].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.padding == themeExtension.padding &&
            w.decoration ==
                BoxDecoration(
                  color: themeExtension.primaryColor,
                  border: Border.all(
                    width: themeExtension.borderWidth,
                    color: snackBarType.getBorderColor(context),
                  ),
                  borderRadius: themeExtension.borderRadius,
                ) &&
            w.child is Row &&
            (w.child as Row).mainAxisSize == MainAxisSize.min &&
            (w.child as Row).children.length == (showCloseButton ? 3 : 1) &&
            (showCloseButton
                ? ((w.child as Row).children[1] is SizedBox && ((w.child as Row).children[1] as SizedBox).width == themeExtension.contentCloseButtonSpacing)
                : (true)),
      ),
      findsOneWidget,
    );

    // [_Message].
    if (isUsingMessage) {
      expect(
        find.byWidgetPredicate(
          (Widget w) => w is Text && w.data == message && w.style == themeExtension.messageTextStyle,
        ),
        findsOneWidget,
      );
    }

    // Widget.
    if (isUsingChild) {
      expect(
        find.byWidgetPredicate(
          (Widget w) => w is Flexible && w.child is MyoroRadio,
        ),
        findsOneWidget,
      );
    }

    // [_CloseButton].
    if (showCloseButton) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is MyoroIconTextHoverButton &&
              w.icon == themeExtension.closeButtonIcon &&
              w.iconSize == themeExtension.closeButtonIconSize &&
              w.onPressed != null,
        ),
        findsOneWidget,
      );
    }
  }

  test('MyoroSnackBar text (x)or child assertion', () {
    expect(() => MyoroSnackBar(message: message, child: child), throwsAssertionError);
  });

  testWidgets('MyoroSnackBar using text', (WidgetTester tester) async {
    expectCalls(await pumpWidget(tester, isUsingMessage: true), isUsingMessage: true);
  });

  testWidgets('MyoroSnackBar using a widget', (WidgetTester tester) async {
    expectCalls(await pumpWidget(tester, isUsingChild: true), isUsingChild: true);
  });
}
