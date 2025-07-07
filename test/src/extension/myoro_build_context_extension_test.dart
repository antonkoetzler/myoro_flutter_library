import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroBuildContextExtension', (WidgetTester tester) async {
    late final BuildContext context;
    final isDarkMode = faker.randomGenerator.boolean();

    await tester.pumpWidget(
      MyoroWidgetTester(
        themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
        child: Builder(
          builder: (buildContext) {
            context = buildContext;
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // [MyoroBuildContextExtension.isDarkMode]
    expect(context.isDarkMode, isDarkMode);

    // [MyoroBuildContextExtension.themeData]
    expect(context.themeData, isA<ThemeData>());
  });
}
