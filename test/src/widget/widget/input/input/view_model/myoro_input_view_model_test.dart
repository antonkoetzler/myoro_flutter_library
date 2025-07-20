import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroInputViewModel.initialize', () {
    final viewModel = MyoroInputViewModel();

    tearDown(viewModel.dispose);

    test('MyoroInputViewModel.initialize', () {
      expect(() => viewModel.state, throwsAssertionError);
      viewModel.initialize(
        MyoroInputConfiguration.fake(),
        faker.randomGenerator.boolean() ? MyoroNumberInputFormatter() : null,
      );
      expect(() => viewModel.state, returnsNormally);
    });
  });

  group('MyoroInputViewModel.inputControllerListener', () {
    final viewModel =
        MyoroInputViewModel()..initialize(
          MyoroInputConfiguration.fake(),
          faker.randomGenerator.boolean() ? MyoroNumberInputFormatter() : null,
        );

    tearDown(viewModel.dispose);

    test('MyoroInputViewModel.inputControllerListener', () {
      viewModel.inputControllerListener();
      expect(viewModel.state.showClearTextButton, viewModel.state.showClearTextButton);
    });
  });

  group('MyoroInputViewModel.checkboxOnChanged', () {
    var checkboxOnChangedExecuted = false;

    final viewModel =
        MyoroInputViewModel()..initialize(
          MyoroInputConfiguration.fake().copyWith(checkboxOnChanged: (_, _) => checkboxOnChangedExecuted = true),
          faker.randomGenerator.boolean() ? MyoroNumberInputFormatter() : null,
        );

    tearDown(viewModel.dispose);

    test('MyoroInputViewModel.checkboxOnChanged', () {
      final value = faker.randomGenerator.boolean();
      viewModel.checkboxOnChanged(value);
      expect(checkboxOnChangedExecuted, isTrue);
      expect(viewModel.state.enabled, value);
    });
  });

  group('MyoroInputViewModel.clearText', () {
    final viewModelWithFormatter =
        MyoroInputViewModel()..initialize(MyoroInputConfiguration.fake(), MyoroNumberInputFormatter());
    final viewModelWithoutFormatter = MyoroInputViewModel()..initialize(MyoroInputConfiguration.fake(), null);

    tearDownAll(() {
      viewModelWithFormatter.dispose();
      viewModelWithoutFormatter.dispose();
    });

    test('MyoroInputViewModel.clearText with formatter', () {
      viewModelWithFormatter.clearText();
      expect(viewModelWithFormatter.state.inputController.text, viewModelWithFormatter.state.formatter!.initialText);
    });

    test('MyoroInputViewModel.clearText without formatter', () {
      viewModelWithFormatter.clearText();
      print(viewModelWithoutFormatter.state.inputController.text);
      expect(viewModelWithoutFormatter.state.inputController.text.isEmpty, isTrue);
    });
  });
}
