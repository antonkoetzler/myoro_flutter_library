import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_app_bar.dart';
part '_widgets/_button.dart';
part '_widgets/_previous_page_button.dart';
part '_widgets/_title.dart';
part '_widgets/_toggle_theme_button.dart';

/// Base screen [Widget].
final class StoryboardScreen extends StatelessWidget {
  /// Configuration.
  final StoryboardScreenConfiguration configuration;

  const StoryboardScreen({super.key, required this.configuration});

  @override
  Widget build(context) {
    return InheritedProvider.value(
      value: StoryboardScreenViewModel(configuration),
      child: MyoroScreen(configuration: MyoroScreenConfiguration(appBar: const _AppBar(), body: configuration.body)),
    );
  }
}
