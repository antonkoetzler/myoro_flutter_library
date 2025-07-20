import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

void main() {
  final viewModel = MyoroDatePickerInputViewModel(MyoroDatePickerInputConfiguration.fake());

  tearDownAll(viewModel.dispose);

  testWidgets('MyoroDatePickerInputViewModel.openDatePicker', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: InheritedProvider.value(
          value: viewModel,
          child: MyoroDatePickerInput(createViewModel: false, configuration: viewModel.state.configuration),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDatePickerInput), findsOneWidget);
  });

  testWidgets('MyoroDatePickerInputViewModel.openDatePicker', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(child: MyoroDatePickerInput(configuration: MyoroDatePickerInputConfiguration.fake())),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDatePickerInput), findsOneWidget);

    // Testing the date picker.
    await tester.tap(
      find.byWidgetPredicate(
        (w) =>
            w is MouseRegion && w.child is GestureDetector && (w.child as GestureDetector).child is MyoroLayoutBuilder,
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text(DateTime.now().day.toString()));
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();
  });
}
