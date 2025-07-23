import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storyboard/storyboard.dart';

import '../mock/shared_preferences.mocks.dart';

/// Root [Widget] of [Widget] tests.
final class StoryboardWidgetTester extends StatefulWidget {
  /// [Widget] that will be tested.
  final Widget child;

  const StoryboardWidgetTester({super.key, required this.child});

  @override
  State<StoryboardWidgetTester> createState() => _StoryboardWidgetTesterState();
}

final class _StoryboardWidgetTesterState extends State<StoryboardWidgetTester> {
  Widget get _child => widget.child;

  final _kiwiContainer = KiwiContainer();

  @override
  void initState() {
    super.initState();

    // Initializing dependencies required in each [Widget] test.
    final mockSharedPreferences = MockSharedPreferences.preConfigured();
    _kiwiContainer
      ..registerSingleton<SharedPreferences>((_) => mockSharedPreferences)
      ..registerSingleton<ThemeModeController>(
        (_) => ThemeModeController(faker.randomGenerator.boolean(), mockSharedPreferences),
      )
      ..registerSingleton<ModulesController>((_) => ModulesController());
  }

  @override
  void dispose() {
    _kiwiContainer.clear();
    super.dispose();
  }

  @override
  Widget build(context) {
    return MyoroWidgetTester(themeExtensionsBuilder: createStoryboardThemeExtensions, child: _child);
  }
}
