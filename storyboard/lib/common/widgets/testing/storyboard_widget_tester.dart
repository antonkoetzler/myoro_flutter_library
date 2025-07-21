import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

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

  @override
  void initState() {
    super.initState();

    // Initializing dependencies required in each [Widget] test.
    KiwiContainer().registerSingleton<ModulesController>((_) => ModulesController());
  }

  @override
  Widget build(context) {
    return MyoroWidgetTester(themeExtensionsBuilder: createStoryboardThemeExtensions, child: _child);
  }
}
