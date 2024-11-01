import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() => runApp(const _App());

final class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myoro_flutter_library Storyboard',
      home: MyoroScreen(
        appBar: AppBar(),
        body: const Text('Start'),
      ),
    );
  }
}
