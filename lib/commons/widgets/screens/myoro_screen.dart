import 'package:flutter/material.dart';

/// Root widget of any screen widget.
final class MyoroScreen extends StatelessWidget {
  /// App bar of the screen.
  final PreferredSizeWidget appBar;

  /// Body of the screen.
  final Widget body;

  const MyoroScreen({
    super.key,
    required this.appBar,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
