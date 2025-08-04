import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroTabViewController(configuration: MyoroTabViewConfiguration.fake());

  tearDownAll(controller.dispose);

  test('MyoroTabViewController.viewModel', () {
    // ignore: invalid_use_of_protected_member
    controller.viewModel;
  });

  test('MyoroTabViewController.selectedTabNotifier', () {
    controller.selectedTabNotifier;
  });

  test('MyoroTabViewController.selectedTab', () {
    controller.selectedTab;
  });

  test('MyoroTabViewController.selectTab', () {
    final tab = controller.configuration.tabs[faker.randomGenerator.integer(controller.configuration.tabs.length)];
    controller.selectTab(tab);
    expect(controller.selectedTab, tab);
  });
}
