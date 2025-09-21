import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final viewModel = MyoroTimePickerInputViewModel(MyoroTimePickerInputConfiguration.fake());

  tearDownAll(viewModel.dispose);

  testWidgets('MyoroTimePickerInputViewModel', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroTimePickerInput(configuration: viewModel.state.configuration)),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTimePickerInput), findsOneWidget);
  });

  testWidgets('MyoroTimePickerInputViewModel.openTimePicker', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroTimePickerInput(configuration: MyoroTimePickerInputConfiguration.fake())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroTimePickerInput), findsOneWidget);

    // Testing the date picker.
    await tester.tap(
      find.byWidgetPredicate(
        (w) =>
            w is MouseRegion && w.child is GestureDetector && (w.child as GestureDetector).child is MyoroLayoutBuilder,
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();
  });
}
