import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Body for a [MyoroScreen.body].
final class MyoroBody extends StatelessWidget {
  /// Contents of the body.
  final Widget child;

  const MyoroBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
