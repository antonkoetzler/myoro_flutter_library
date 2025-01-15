import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../test_exports.dart';

/// Widget test of [MyoroDrawer].
void main() {
  final String title = faker.lorem.word();
  late final TextStyle? titleTextStyle;
  const bool showCloseButton = true;
  final bool barrierDismissable = faker.randomGenerator.boolean();

  setUp(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    titleTextStyle = faker.randomGenerator.boolean() ? MyoroTypographyTheme.instance.randomTextStyle : null;
  });

  testWidgets('MyoroDrawer', (WidgetTester tester) async {
    late final BuildContext context;
    late final MyoroDrawerThemeExtension themeExtension;
    final bool isEndDrawer = faker.randomGenerator.boolean();

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext buildContext) {
            context = buildContext;
            themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    context.openDrawer(
      isEndDrawer: isEndDrawer,
      drawer: MyoroDrawer(
        title: title,
        titleTextStyle: titleTextStyle,
        showCloseButton: showCloseButton,
        barrierDismissable: barrierDismissable,
        child: const SizedBox.shrink(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroDrawer), findsOneWidget);

    // Wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Stack && w.children.length == 2 && w.children.last is Row,
      ),
      findsOneWidget,
    );

    // [_Barrier].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is GestureDetector &&
            (barrierDismissable ? w.onTap != null : w.onTap == null) &&
            w.child is Container &&
            (w.child as Container).color == MyoroColorTheme.transparent,
      ),
      findsOneWidget,
    );

    // Drawer content wrapper.
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Row && w.mainAxisAlignment == (!isEndDrawer ? MainAxisAlignment.start : MainAxisAlignment.end) && w.children.length == 2,
      ),
      findsOneWidget,
    );

    // [_Drawer].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == themeExtension.drawerPadding &&
            w.child is Drawer &&
            (w.child as Drawer).shape == themeExtension.drawerShape &&
            (w.child as Drawer).child is Padding &&
            ((w.child as Drawer).child as Padding).padding == themeExtension.drawerContentPadding &&
            ((w.child as Drawer).child as Padding).child is Column &&
            (((w.child as Drawer).child as Padding).child as Column).children.length == 3 &&
            (((w.child as Drawer).child as Padding).child as Column).children[1] is MyoroBasicDivider &&
            ((((w.child as Drawer).child as Padding).child as Column).children[1] as MyoroBasicDivider).configuration ==
                MyoroBasicDividerConfiguration(
                  direction: Axis.horizontal,
                  padding: themeExtension.titleContentDividerPadding,
                ) &&
            (((w.child as Drawer).child as Padding).child as Column).children.last is Expanded &&
            // The [SizedBox.shrink] we placed in the [tester.pumpWidget] call.
            ((((w.child as Drawer).child as Padding).child as Column).children.last as Expanded).child is SizedBox,
      ),
      findsOneWidget,
    );

    // [_Title].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Text && w.data == title && w.style == (titleTextStyle ?? themeExtension.titleTextStyle),
      ),
      findsOneWidget,
    );

    // [_CloseButton].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroIconTextHoverButton &&
            w.configuration ==
                MyoroHoverButtonConfiguration(
                  primaryColor: themeExtension.closeButtonBackgroundColor,
                  bordered: themeExtension.closeButtonBordered,
                ) &&
            w.icon == (!isEndDrawer ? themeExtension.closeButtonDrawerIcon : themeExtension.closeButtonEndDrawerIcon) &&
            w.onPressed != null,
      ),
      findsOneWidget,
    );
  });
}
