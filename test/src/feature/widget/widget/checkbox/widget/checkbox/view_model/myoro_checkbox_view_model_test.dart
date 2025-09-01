import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  bool onChangedExecuted = false;
  final configuration = MyoroCheckboxConfiguration.fake().copyWith(onChanged: (_) => onChangedExecuted = true);
  final viewModel = MyoroCheckboxViewModel()..state.configuration = configuration;

  tearDownAll(viewModel.dispose);

  test('MyoroCheckboxViewModel.toggle', () {
    final oldEnabled = viewModel.state.enabled;
    viewModel.toggle();
    expect(viewModel.state.enabled, isNot(oldEnabled));
    final fakeEnabled = faker.randomGenerator.boolean();
    viewModel.toggle(fakeEnabled);
    expect(viewModel.state.enabled, fakeEnabled);
  });

  test('MyoroCheckboxViewModel.onTapUp', () {
    final oldEnabled = viewModel.state.enabled;
    viewModel.onTapUp(null);
    expect(onChangedExecuted, isTrue);
    expect(viewModel.state.enabled, isNot(oldEnabled));
  });
}
