import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget test of [MyoroSnackBarContainer].
void main() {
  testWidgets('MyoroSnackBarContainer', (WidgetTester tester) async {
    final key = UniqueKey();
    late final MyoroSnackBarContainerThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context
                .resolveThemeExtension<MyoroSnackBarContainerThemeExtension>();

            return GestureDetector(
              key: key,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  MyoroSnackBarContainer(
                    themeExtension: themeExtension,
                    duration: faker.randomGenerator.boolean()
                        ? const Duration()
                        : null,
                    snackBar: MyoroSnackBar(
                      message: faker.lorem.word(),
                    ),
                  ),
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

    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is SnackBar &&
            w.backgroundColor == themeExtension.primaryColor &&
            w.behavior == themeExtension.behavior &&
            w.margin == themeExtension.margin &&
            w.padding == themeExtension.padding &&
            w.elevation == themeExtension.elevation &&
            w.dismissDirection == themeExtension.dismissDirection &&
            w.duration == themeExtension.duration,
        // w.content is _SnackBar
      ),
      findsOneWidget,
    );

    // [_SnackBar].
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is Row &&
            w.mainAxisSize == MainAxisSize.min &&
            w.children.length == 1 &&
            w.children.first is Flexible &&
            (w.children.first as Flexible).child is MyoroSnackBar,
      ),
      findsOneWidget,
    );
  });
}
