import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroCheckbox.didUpdateWidget', (tester) async {
    final configurationNotifier = ValueNotifier(MyoroCheckboxConfiguration.fake());

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: configurationNotifier,
          builder: (_, configuration, _) {
            return MyoroCheckbox(configuration: configuration);
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroCheckbox), findsOneWidget);
    expect(
      find.byWidgetPredicate((w) => w is Checkbox && w.value == configurationNotifier.value.value),
      findsOneWidget,
    );

    configurationNotifier.value = configurationNotifier.value;
    await tester.pumpAndSettle();
    expect(
      find.byWidgetPredicate((w) => w is Checkbox && w.value == configurationNotifier.value.value),
      findsOneWidget,
    );
  });
}
