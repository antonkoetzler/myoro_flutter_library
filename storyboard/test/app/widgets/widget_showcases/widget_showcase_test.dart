import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [WidgetShowcase].
void main() {
  void expectDivider({required Axis direction, EdgeInsets? padding}) {
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroBasicDivider &&
            w.configuration ==
                MyoroBasicDividerConfiguration(
                  direction: direction,
                  padding: padding,
                ),
      ),
      findsAtLeastNWidgets(1),
    );
  }

  testWidgets('WidgetShowcase', (WidgetTester tester) async {
    final widgetOptions = List.generate(faker.randomGenerator.integer(100), (_) => const SizedBox.shrink());
    late final WidgetShowcaseThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: Builder(
            builder: (BuildContext context) {
              themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

              return WidgetShowcase(
                widget: const SizedBox.shrink(),
                widgetOptions: widgetOptions,
              );
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(WidgetShowcase), findsOneWidget);

    // [WidgetShowcase].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Row && w.crossAxisAlignment == CrossAxisAlignment.start && w.children.length == 3 && w.children.first is Expanded,
        // (w.children.first as Expanded).child is _WidgetWrapper &&
        // w.children[1] is _Divider &&
        // w.children.last is _WidgetOptions,
      ),
      findsOneWidget,
    );

    // [_Divider] in [WidgetShowcase].
    expectDivider(direction: Axis.vertical);

    // [_WidgetWrapper].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == themeExtension.widgetWrapperPadding &&
            w.child is Container &&
            (w.child as Container).alignment == themeExtension.widgetWrapperAlignment &&
            (w.child as Container).decoration ==
                BoxDecoration(
                  color: themeExtension.widgetWrapperBackgroundColor,
                  borderRadius: themeExtension.widgetWrapperBorderRadius,
                  border: themeExtension.widgetWrapperBorder,
                ) &&
            (w.child as Container).child is Padding &&
            ((w.child as Container).child as Padding).padding == themeExtension.widgetWrapperContentPadding &&
            ((w.child as Container).child as Padding).child is SizedBox, // SizedBox.shrink inserted in this test.
      ),
      findsOneWidget,
    );

    // [_WidgetOptions].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is IntrinsicWidth &&
            w.child is Padding &&
            (w.child as Padding).padding == themeExtension.widgetOptionsPadding &&
            (w.child as Padding).child is MyoroScrollable &&
            ((w.child as Padding).child as MyoroScrollable).scrollableType.isSingleChildScrollView &&
            ((w.child as Padding).child as MyoroScrollable).children.length == widgetOptions.length,
      ),
      findsOneWidget,
    );

    // Item in [_WidgetOptions].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Column && w.mainAxisSize == MainAxisSize.min && w.children.length == 2 && w.children.first is Flexible,
      ),
      findsNWidgets(widgetOptions.length),
    );

    // [_Divider in [_WidgetOptions].
    expectDivider(direction: Axis.horizontal, padding: themeExtension.widgetOptionsDividerPadding);
  });
}
