import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroModal].
void main() {
  testWidgets('MyoroModal', (WidgetTester tester) async {
    bool onClosedCalled = false;

    final configuration = MyoroModalConfiguration.fake().copyWith(
      title: faker.lorem.word(),
      onClosed: () => onClosedCalled = true,
      showCloseButton: true,
    );

    late final MyoroModalThemeExtension themeExtension;

    final key = UniqueKey();
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
            return GestureDetector(
              key: key,
              onTap: () {
                MyoroModal.show(context, configuration: configuration, child: const SizedBox.shrink());
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(key));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroModal), findsOneWidget);

    // [MyoroModal].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Center &&
            w.child is Material &&
            (w.child as Material).color == themeExtension.primaryColor &&
            (w.child as Material).borderRadius == themeExtension.borderRadius &&
            (w.child as Material).child is Container &&
            ((w.child as Material).child as Container).constraints == configuration.constraints &&
            ((w.child as Material).child as Container).padding == (configuration.padding ?? themeExtension.padding) &&
            ((w.child as Material).child as Container).decoration ==
                BoxDecoration(borderRadius: themeExtension.borderRadius, border: themeExtension.border) &&
            ((w.child as Material).child as Container).child is Column &&
            (((w.child as Material).child as Container).child as Column).mainAxisSize == MainAxisSize.min &&
            (((w.child as Material).child as Container).child as Column).children.length == 3 &&
            // (((w.child as Material).child as Container).child as Column).children.first is _Header &&
            (((w.child as Material).child as Container).child as Column).children[1] is SizedBox &&
            ((((w.child as Material).child as Container).child as Column).children[1] as SizedBox).height ==
                themeExtension.spacing &&
            (((w.child as Material).child as Container).child as Column).children.last is Flexible &&
            ((((w.child as Material).child as Container).child as Column).children.last as Flexible).child
                is SizedBox, // [MyoroModal.child]
      ),
      findsOneWidget,
    );

    // [_Header].
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is Row && w.mainAxisAlignment == MainAxisAlignment.spaceBetween && w.children.length == 2,
      ),
      findsOneWidget,
    );

    // [_Title].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Padding &&
            w.padding == const EdgeInsets.only(left: 8) &&
            w.child is Text &&
            (w.child as Text).data == configuration.title &&
            (w.child as Text).style == themeExtension.titleTextStyle,
      ),
      findsOneWidget,
    );

    // [_CloseButton].
    final Finder closeButtonFinder = find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroIconTextButton &&
          w.configuration.iconConfiguration?.icon == themeExtension.closeButtonIcon &&
          w.configuration.buttonConfiguration?.onTapUp != null,
    );
    expect(closeButtonFinder, findsOneWidget);

    // Confirming that [configuration.onClosed] was executed & [MyoroModal] was called when it is closed.
    await tester.tap(closeButtonFinder);
    await tester.pumpAndSettle();
    expect(find.byType(MyoroModal), findsNothing);
    expect(onClosedCalled, isTrue);
  });
}
