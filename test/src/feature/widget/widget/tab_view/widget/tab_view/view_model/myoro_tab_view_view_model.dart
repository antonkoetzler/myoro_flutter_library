import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final viewModel = MyoroTabViewViewModel(MyoroTabViewConfiguration.fake());

  tearDownAll(viewModel.dispose);

  test('MyoroTabViewViewModel.selectTab', () {
    final tabs = viewModel.state.configuration.tabs;
    final tab = tabs[faker.randomGenerator.integer(tabs.length)];
    viewModel.selectTab(tab);
    expect(viewModel.state.selectedTab, tab);
  });
}
