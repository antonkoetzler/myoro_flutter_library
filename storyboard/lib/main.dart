import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/commons/widgets/screens/base_screen.dart';

void main() => runApp(const _App());

final class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myoro_flutter_library Storyboard',
      home: BaseScreen(
        appBar: AppBar(),
        body: const Text('Start'),
      ),
    );
  }
}
