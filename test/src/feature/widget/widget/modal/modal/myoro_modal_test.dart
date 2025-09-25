import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester, {
    required bool isBottomSheet,
    MyoroModalConfiguration Function()? configurationBuilder,
    Function(MyoroModalThemeExtension)? callback,
  }) async {
    final gestureDetectorKey = GlobalKey();
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroModalThemeExtension.builder(colorScheme, textTheme);
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (context) {
            return GestureDetector(
              key: gestureDetectorKey,
              onTapDown: (_) async {
                final configuration = configurationBuilder?.call() ?? MyoroModalConfiguration.fake();

                return isBottomSheet
                    ? await MyoroModal.showModal(context, configuration: configuration, child: const SizedBox.shrink())
                    : await MyoroModal.showBottomSheet(
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
    await tester.tap(find.byKey(gestureDetectorKey));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroModal), findsOneWidget);
    await callback?.call(themeExtension);
  }

  testWidgets('MyoroModal close button functionality', (tester) async {
    await testCase(
      tester,
      isBottomSheet: false,
      configurationBuilder: () => MyoroModalConfiguration.fake().copyWith(showCloseButton: true),
      callback: (themeExtension) async {
        await tester.tap(find.byIcon(themeExtension.closeButtonIconConfiguration?.icon ?? Icons.close));
        await tester.pumpAndSettle();
        expect(find.byType(MyoroModal), findsNothing);
      },
    );
  });

  testWidgets('MyoroModal title', (tester) async {
    final title = faker.lorem.word();
    await testCase(
      tester,
      isBottomSheet: false,
      configurationBuilder: () => MyoroModalConfiguration.fake().copyWith(title: title),
      callback: (_) => expect(find.text(title), findsOneWidget),
    );
  });

  testWidgets('MyoroModal.showBotomSheet', (tester) async {
    await testCase(tester, isBottomSheet: true);
  });
}
