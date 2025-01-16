import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../test_exports.dart';

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
                MyoroModal.show(
                  context,
                  configuration: configuration,
                  child: const SizedBox.shrink(),
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
            ((w.child as Material).child as Container).constraints == (configuration.constraints ?? themeExtension.constraints) &&
            ((w.child as Material).child as Container).padding == themeExtension.padding &&
            ((w.child as Material).child as Container).decoration ==
                BoxDecoration(
                  borderRadius: themeExtension.borderRadius,
                  border: themeExtension.border,
                ) &&
            ((w.child as Material).child as Container).child is Column &&
            (((w.child as Material).child as Container).child as Column).mainAxisSize == MainAxisSize.min &&
            (((w.child as Material).child as Container).child as Column).children.length == 
      ),
      findsOneWidget,
    );

    // Confirming that [configuration.onClosed] was executed & [MyoroModal] was called when it is closed.
    await tester.tap(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroIconTextHoverButton && w.icon == themeExtension.closeButtonIcon && w.onPressed != null,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroModal), findsNothing);
    expect(onClosedCalled, isTrue);
  });
}
