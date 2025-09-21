import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  group('MyoroInputViewModel constructor', () {
    test('MyoroInputViewModel constructor', () {
      final configuration = MyoroInputConfiguration.fake();
      final formatter = faker.randomGenerator.boolean() ? MyoroNumberInputFormatter() : null;
      final viewModel = MyoroInputViewModel(configuration, formatter);

      expect(() => viewModel.state, returnsNormally);
      viewModel.dispose();
    });
  });

  group('MyoroInputViewModel.controllerListener', () {
    test('MyoroInputViewModel.controllerListener', () {
      final configuration = MyoroInputConfiguration.fake();
      final formatter = faker.randomGenerator.boolean() ? MyoroNumberInputFormatter() : null;
      final viewModel = MyoroInputViewModel(configuration, formatter);

      viewModel.controllerListener();
      expect(() => viewModel.state.controller, returnsNormally);

      viewModel.dispose();
    });
  });

  group('MyoroInputViewModel.checkboxOnChanged', () {
    test('MyoroInputViewModel.checkboxOnChanged', () {
      var checkboxOnChangedExecuted = false;
      final configuration = MyoroInputConfiguration.fake().copyWith(
        checkboxOnChanged: (_, _) => checkboxOnChangedExecuted = true,
      );
      final formatter = faker.randomGenerator.boolean() ? MyoroNumberInputFormatter() : null;
      final viewModel = MyoroInputViewModel(configuration, formatter);

      final value = faker.randomGenerator.boolean();
      viewModel.checkboxOnChanged(value);
      expect(checkboxOnChangedExecuted, isTrue);
      expect(viewModel.state.enabled, value);

      viewModel.dispose();
    });
  });

  group('MyoroInputViewModel.clearText', () {
    test('MyoroInputViewModel.clearText with formatter', () {
      final configuration = MyoroInputConfiguration.fake();
      final formatter = MyoroNumberInputFormatter();
      final viewModel = MyoroInputViewModel(configuration, formatter);

      viewModel.clearText();
      expect(viewModel.state.controller.text, viewModel.state.formatter!.initialText);

      viewModel.dispose();
    });

    test('MyoroInputViewModel.clearText without formatter', () {
      final configuration = MyoroInputConfiguration.fake();
      final viewModel = MyoroInputViewModel(configuration, null);

      viewModel.clearText();
      expect(viewModel.state.controller.text.isEmpty, isTrue);

      viewModel.dispose();
    });
  });
}
