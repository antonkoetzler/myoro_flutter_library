import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester,
    MyoroDialogModalConfiguration Function(MyoroDialogModalConfiguration) configurationBuilder,
    Function() callback,
  ) async {
    final gestureDetectorKey = GlobalKey();
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (context) {
            return GestureDetector(
              key: gestureDetectorKey,
              onTapDown:
                  (_) => MyoroDialogModal.show(
                    context,
                    configuration: configurationBuilder(
                      MyoroDialogModalConfiguration.fake(),
                    ).copyWith(constraints: const BoxConstraints(minWidth: 800, minHeight: 800)),
                  ),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(gestureDetectorKey));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDialogModal), findsOneWidget);
    await callback();
  }

  testWidgets('MyoroDialogModal confirm button functionality', (tester) async {
    final confirmButtonText = faker.lorem.word();
    var onConfirmExecuted = false;
    await testCase(
      tester,
      (configuration) {
        return configuration.copyWith(confirmButtonText: confirmButtonText, onConfirm: () => onConfirmExecuted = true);
      },
      () async {
        await tester.tap(find.text(confirmButtonText));
        await tester.pumpAndSettle();
        expect(onConfirmExecuted, isTrue);
      },
    );
  });

  testWidgets('MyoroDialogModal cancel button functionality', (tester) async {
    final cancelButtonText = faker.lorem.word();
    var onCancelExecuted = false;
    await testCase(
      tester,
      (configuration) {
        return configuration.copyWith(cancelButtonText: cancelButtonText, onCancel: () => onCancelExecuted = true);
      },
      () async {
        await tester.tap(find.text(cancelButtonText));
        await tester.pumpAndSettle();
        expect(onCancelExecuted, isTrue);
        expect(find.byType(MyoroDialogModal), findsNothing);
      },
    );
  });

  testWidgets('MyoroDialogModal with MyoroDialogModalConfiguration.text provided', (tester) async {
    final text = faker.lorem.word();
    await testCase(
      tester,
      (configuration) => configuration.copyWith(text: text, childProvided: false),
      () => expect(find.text(text), findsOneWidget),
    );
  });

  testWidgets('MyoroDialogModal with MyoroDialogModalConfiguration.child provided', (tester) async {
    final child = Text(faker.lorem.word());
    await testCase(
      tester,
      (configuration) => configuration.copyWith(child: child, text: ''),
      () => expect(find.byWidget(child), findsOneWidget),
    );
  });
}
