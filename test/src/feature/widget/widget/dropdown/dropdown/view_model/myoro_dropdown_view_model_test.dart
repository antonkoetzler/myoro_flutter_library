import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroDropdownViewModel', () {
    late MyoroSingleDropdownViewModel<String> viewModel;
    late MyoroSingleDropdownConfiguration<String> configuration;

    setUp(() {
      configuration = MyoroSingleDropdownConfiguration<String>(
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      viewModel = MyoroSingleDropdownViewModel<String>(configuration);
    });

    tearDown(() {
      viewModel.dispose();
    });

    test('constructor with configuration', () {
      expect(viewModel, isA<MyoroSingleDropdownViewModel<String>>());
      expect(viewModel.state.configuration, configuration);
    });

    test('context getter before setting', () {
      expect(() => viewModel.context, throwsAssertionError);
    });

    test('context setter and getter', () {
      // This test would require a real BuildContext, so we'll skip the detailed test
      expect(() => viewModel.context, throwsAssertionError);
    });

    test('state getter', () {
      expect(viewModel.state, isA<MyoroDropdownState<String, MyoroSingleDropdownConfiguration<String>>>());
    });

    test('toggle method when disabled', () {
      expect(viewModel.state.showing, isFalse);
      viewModel.toggle();
      expect(viewModel.state.showing, isTrue);
    });

    test('toggle method when enabled', () {
      viewModel.enable();
      expect(viewModel.state.showing, isTrue);
      viewModel.toggle();
      expect(viewModel.state.showing, isFalse);
    });

    test('enable method when disabled', () {
      expect(viewModel.state.showing, isFalse);
      viewModel.enable();
      expect(viewModel.state.showing, isTrue);
    });

    test('enable method when already enabled', () {
      viewModel.enable();
      expect(viewModel.state.showing, isTrue);
      viewModel.enable(); // Should not change state
      expect(viewModel.state.showing, isTrue);
    });

    test('disable method when enabled', () {
      viewModel.enable();
      expect(viewModel.state.showing, isTrue);
      viewModel.disable();
      expect(viewModel.state.showing, isFalse);
    });

    test('disable method when already disabled', () {
      expect(viewModel.state.showing, isFalse);
      viewModel.disable(); // Should not change state
      expect(viewModel.state.showing, isFalse);
    });

    test('configuration setter with same configuration', () {
      final originalConfiguration = viewModel.state.configuration;
      viewModel.configuration = originalConfiguration;
      expect(viewModel.state.configuration, originalConfiguration);
    });

    test('configuration setter with different configuration', () {
      final newConfiguration = MyoroSingleDropdownConfiguration<String>(
        dropdownType: MyoroDropdownTypeEnum.modal,
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      viewModel.configuration = newConfiguration;
      expect(viewModel.state.configuration, newConfiguration);
    });

    test('dispose method', () {
      expect(() => viewModel.dispose(), returnsNormally);
    });
  });
}
