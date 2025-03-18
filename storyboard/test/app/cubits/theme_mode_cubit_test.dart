import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kiwi/kiwi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

import '../../test_exports.dart';

/// Unit test of [ThemeModeCubit].
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final kiwiContainer = KiwiContainer();

  final bool darkModeEnabled = faker.randomGenerator.boolean();

  setUp(() => kiwiContainer
      .registerSingleton<SharedPreferences>((_) => MockSharedPreferences()));

  tearDown(() => kiwiContainer.clear());

  blocTest(
    'ThemeModeCubit.toggle',
    build: () => ThemeModeCubit(darkModeEnabled),
    act: (bloc) => bloc.toggle(),
    expect: () => [darkModeEnabled ? ThemeMode.light : ThemeMode.dark],
  );
}
