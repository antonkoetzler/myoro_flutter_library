import 'package:flutter/material.dart';

/// Root widget of your [App] widget in main.dart.
final class MyoroMaterialApp extends StatelessWidget {
  /// Title of the application.
  ///
  /// However, a plugin like [window_manager] needs to be used
  /// to for example, set the title of the window on desktop.
  final String title;

  /// Entry point for the application.
  final Widget home;

  const MyoroMaterialApp({
    super.key,
    required this.title,
    required this.home,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: home,
    );
  }
}
