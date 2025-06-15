import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroDrawerController].
abstract interface class MyoroDrawerInterface {
  /// Opens the drawer.
  void openDrawer(BuildContext context, {bool isEndDrawer = false, required MyoroDrawer drawer});

  /// Closes the drawer.
  void closeDrawer(BuildContext context);
}
