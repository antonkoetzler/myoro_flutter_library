import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester,
    MyoroSnackBarConfiguration Function(MyoroSnackBarConfiguration configuration) configurationBuilder,
    FutureOr<void> Function(GlobalKey gestureDetectorKey, MyoroSnackBarThemeExtension themeExtension) callback,
  ) async {
    final gestureDetectorKey = GlobalKey();

    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final textTheme = createMyoroTextTheme(isDarkMode);
    final themeExtension = MyoroSnackBarThemeExtension.builder(colorScheme, textTheme);

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (context) {
            return GestureDetector(
              key: gestureDetectorKey,
              onTapUp: (_) {
                context.showSnackBar(
                  snackBar: MyoroSnackBar(configuration: configurationBuilder(MyoroSnackBarConfiguration.fake())),
                );
              },
            );
          },
        ),
      ),
    );

    await tester.pumpAndSettle();
    await callback(gestureDetectorKey, themeExtension);
  }

  Future<void> openSnackBar(WidgetTester tester, GlobalKey gestureDetectorKey) async {
    await tester.tap(find.byKey(gestureDetectorKey));
    await tester.pumpAndSettle();
  }

  testWidgets('MyoroSnackBar open and close functionalities', (tester) async {
    await testCase(tester, (configuration) => configuration.copyWith(showCloseButton: true), (
      gestureDetectorKey,
      themeExtension,
    ) async {
      // Open the snack bar.
      await openSnackBar(tester, gestureDetectorKey);
      expect(find.byType(MyoroSnackBar), findsOneWidget);

      // Close the snack bar.
      await tester.tap(find.byIcon(themeExtension.closeButtonIconConfiguration?.icon ?? Icons.close));
      await tester.pumpAndSettle();
      expect(find.byType(MyoroSnackBar), findsNothing);
    });
  });

  testWidgets('MyoroSnackBar with MyoroSnackBarConfiguration.message', (tester) async {
    final message = faker.lorem.word();
    await testCase(tester, (configuration) => configuration.copyWith(message: message, childProvided: false), (
      gestureDetectorKey,
      themeExtension,
    ) async {
      await openSnackBar(tester, gestureDetectorKey);
      expect(find.text(message), findsOneWidget);
    });
  });

  testWidgets('MyoroSnackBar with MyoroSnackBarConfiguration.child', (tester) async {
    final child = Text(faker.lorem.word());
    await testCase(tester, (configuration) => configuration.copyWith(child: child, message: ''), (
      gestureDetectorKey,
      themeExtension,
    ) async {
      await openSnackBar(tester, gestureDetectorKey);
      expect(find.byWidget(child), findsOneWidget);
    });
  });
}
