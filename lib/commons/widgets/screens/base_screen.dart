import 'package:flutter/material.dart';

/// Root widget of any screen widget.
final class BaseScreen extends StatelessWidget {
  /// App bar of the screen.
  final PreferredSizeWidget appBar;

  /// Body of the screen.
  final Widget body;

  const BaseScreen({
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
