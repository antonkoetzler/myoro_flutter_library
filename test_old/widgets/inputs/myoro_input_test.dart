import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroInput].
void main() {
  bool enabled = true;

  // final controller = TextEditingController(text: faker.randomGenerator.boolean() ? faker.lorem.word() : null);
  final controller = TextEditingController(text: 'qwuioehj');
  final configuration = MyoroInputConfiguration.fake().copyWith(
    controller: controller,
    checkboxOnChanged: (bool newEnabled, _) {
      expect(enabled != newEnabled, isTrue);
      enabled = newEnabled;
    },
    suffix: const SizedBox.shrink(),
  );
  final formatter = faker.randomGenerator.boolean() ? MyoroTimeInputFormatter() : null;

  tearDown(() => controller.dispose());

  testWidgets('MyoroInput', (WidgetTester tester) async {
    late final MyoroInputThemeExtension themeExtension;
    late final InputBorder border;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
            border = configuration.getBorder(context);
            return MyoroInput(configuration: configuration, formatter: formatter);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroInput), findsOneWidget);

    // [MyoroInput].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.children.length == 5 &&
            // w.children.first is _Checkbox &&
            w.children[1] is SizedBox &&
            (w.children[1] as SizedBox).width == themeExtension.spacing &&
            w.children[2] is Expanded &&
            // (w.children[2] as Expanded).child is _TextFormField &&
            w.children[3] is SizedBox &&
            (w.children[3] as SizedBox).width == themeExtension.spacing &&
            w.children.last is SizedBox, // The [SizedBox] inserted in [configuration].
      ),
      findsOneWidget,
    );

    // [_Checkbox].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroCheckbox &&
            w.configuration.initialValue == configuration.enabled &&
            w.configuration.onChanged != null,
      ),
      findsOneWidget,
    );

    // [_TextFormField].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Container &&
            w.decoration ==
                BoxDecoration(
                  color: themeExtension.primaryColor,
                  borderRadius: themeExtension.borderRadius,
                ) &&
            w.child is ValueListenableBuilder<bool>,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is TextField &&
            w.ignorePointers == false &&
            w.readOnly == (configuration.readOnly ?? false) &&
            w.decoration?.floatingLabelBehavior == themeExtension.labelBehavior &&
            w.decoration?.hintText == configuration.placeholder &&
            w.decoration?.enabledBorder == border &&
            w.decoration?.focusedBorder == border &&
            w.decoration?.errorBorder ==
                border.copyWith(
                  borderSide: border.borderSide.copyWith(color: themeExtension.errorBorderColor),
                ) &&
            w.decoration?.disabledBorder ==
                border.copyWith(
                  borderSide: border.borderSide.copyWith(
                    color: border.borderSide.color.withValues(
                      alpha: themeExtension.disabledOpacity,
                    ),
                  ),
                ) &&
            w.decoration?.isDense == themeExtension.isDense &&
            w.textAlign == configuration.textAlign &&
            w.cursorHeight == themeExtension.cursorHeight,
      ),
      findsOneWidget,
    );

    // [_Label].
    if (configuration.label != null) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is Padding &&
              w.padding == const EdgeInsets.only(bottom: 5) &&
              w.child is Text &&
              (w.child as Text).data == configuration.label &&
              (w.child as Text).style ==
                  (configuration.labelTextStyle ?? themeExtension.labelTextStyle),
        ),
        findsOneWidget,
      );
    }

    // [_ClearTextButton].
    if (configuration.showClearTextButton == true &&
        configuration.controller?.text.isNotEmpty == true) {
      expect(
        find.byWidgetPredicate(
          (Widget w) =>
              w is IntrinsicWidth &&
              w.child is Padding &&
              (w.child as Padding).padding == themeExtension.clearTextButtonPadding &&
              (w.child as Padding).child is MyoroIconTextButton &&
              ((w.child as Padding).child as MyoroIconTextButton)
                      .configuration
                      .iconConfiguration
                      ?.icon ==
                  themeExtension.clearTextButtonIcon &&
              ((w.child as Padding).child as MyoroIconTextButton)
                      .configuration
                      .buttonConfiguration
                      ?.onTapUp !=
                  null,
        ),
        findsOneWidget,
      );
    }
  });
}
