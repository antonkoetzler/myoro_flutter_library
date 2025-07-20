import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester,
    Function(MyoroModalThemeExtension) callback, [
    MyoroModalConfiguration Function(MyoroModalConfiguration)? configurationBuilder,
  ]) async {
    final gestureDetectorKey = GlobalKey();
    final configuration = MyoroModalConfiguration.fake();
    late final MyoroModalThemeExtension themeExtension;
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (context) {
            themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
            return GestureDetector(
              key: gestureDetectorKey,
              onTapDown: (_) async {
                return await MyoroModal.show(
                  context,
                  configuration: (configurationBuilder?.call(configuration) ?? configuration).copyWith(
                    constraints: const BoxConstraints(maxWidth: 500, maxHeight: 500),
                  ),
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
    await callback(themeExtension);
  }

  testWidgets('MyoroModal close button functionality', (tester) async {
    await testCase(tester, (themeExtension) async {
      await tester.tap(find.byIcon(themeExtension.closeButtonIconConfiguration.icon));
      await tester.pumpAndSettle();
      expect(find.byType(MyoroModal), findsNothing);
    }, (configuration) => configuration.copyWith(title: '', showCloseButton: true));
  });

  testWidgets('MyoroModal title', (tester) async {
    final title = faker.lorem.word();
    await testCase(
      tester,
      (_) => expect(find.text(title), findsOneWidget),
      (configuration) => configuration.copyWith(title: title),
    );
  });
}
