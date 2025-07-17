import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

void main() {
  final viewModel = MyoroDatePickerInputViewModel(MyoroInputConfiguration.fake());

  tearDown(viewModel.dispose);

  testWidgets('MyoroDatePickerInputViewModel.openDatePicker', (tester) async {
    late final BuildContext context;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: InheritedProvider.value(
          value: viewModel,
          child: Builder(
            builder: (buildContext) {
              context = buildContext;
              return MyoroDatePickerInput(createViewModel: false, configuration: viewModel.state.configuration);
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroDatePickerInput), findsOneWidget);

    final text = faker.lorem.word();
    viewModel.openDatePicker(context, (_) => Text(text));
    await tester.pumpAndSettle();
    expect(find.text(text), findsOneWidget);
  });
}
