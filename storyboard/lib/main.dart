import 'package:flutter/material.dart';
import 'package:storyboard/app/exports.dart';
import 'package:window_manager/window_manager.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  windowManager.ensureInitialized();
  windowManager.setMinimumSize(const Size(600, 600));
  runApp(const _App());
}

final class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myoro_flutter_library storyboard',
      theme: createTheme(isDarkMode: false),
      darkTheme: createTheme(isDarkMode: true),
      home: const Scaffold(
        appBar: StoryboardAppBar(),
        body: StoryboardBody(),
      ),
    );
  }
}
