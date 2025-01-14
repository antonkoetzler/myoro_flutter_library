import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../../test_exports.dart';

/// Widget test of [MyoroAppBar].
void main() {
  final borderedNotifier = ValueNotifier<bool>(false);

  tearDown(() => borderedNotifier.dispose());

  testWidgets('MyoroAppBar', (WidgetTester tester) async {
    late final MyoroAppBarThemeExtension themeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (BuildContext context) {
            themeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();

            return ValueListenableBuilder(
              valueListenable: borderedNotifier,
              builder: (_, bool bordered, __) {
                return MyoroAppBar(
                  bordered: bordered,
                  child: const SizedBox.shrink(),
                );
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroAppBar), findsOneWidget);

    // Wrapper
    expect(
      find.byWidgetPredicate(
        (w) => w is Column && w.mainAxisSize == MainAxisSize.min && w.children.length == 1,
      ),
      findsOneWidget,
    );

    // Contents of the app bar
    expect(
      find.byWidgetPredicate(
        (w) =>
            w is Flexible &&
            w.child is Container &&
            (w.child as Container).color == themeExtension.primaryColor &&
            (w.child as Container).padding == themeExtension.contentPadding,
      ),
      findsOneWidget,
    );

    // Since [borderedNotifier.value] is false by default, there shouldn't be a border.
    expect(find.byType(MyoroBasicDivider), findsNothing);

    // Now there should be a border.
    borderedNotifier.value = true;
    await tester.pump();
    expect(
      find.byWidgetPredicate(
        (w) =>
            w is MyoroBasicDivider &&
            w.configuration ==
                const MyoroBasicDividerConfiguration(
                  direction: Axis.horizontal,
                ),
      ),
      findsOneWidget,
    );
  });
}
