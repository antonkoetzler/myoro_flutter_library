import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

import '../../../../../../../mock/shared_preferences.mocks.dart';

void main() {
  final kiwiContainer = KiwiContainer();
  late final MyoroAppWidgetShowcaseScreenViewModel viewModel;

  setUpAll(() {
    kiwiContainer
      ..registerSingleton<ThemeModeController>((_) => ThemeModeController(faker.randomGenerator.boolean()))
      ..registerSingleton<SharedPreferences>((_) => MockSharedPreferences.preConfigured());
    viewModel = MyoroAppWidgetShowcaseScreenViewModel();
  });

  tearDownAll(() {
    viewModel.dispose();
    kiwiContainer.clear();
  });

  test('MyoroAppWidgetShowcaseScreenViewModel.themeMode setter', () {
    viewModel.state.themeMode = myoroFake<ThemeMode>();
  });

  test('MyoroAppWidgetShowcaseScreenViewModel.configuration', () {
    viewModel.configuration(const SizedBox.shrink());
  });
}
