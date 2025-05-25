import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part '_widgets/_body.dart';

/// Main screen of Storyboard.
final class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoryboardScreen(title: 'MFL Storyboard', body: _Body());
  }
}
