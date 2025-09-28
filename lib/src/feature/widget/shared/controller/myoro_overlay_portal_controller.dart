import 'package:flutter/material.dart';

/// Listenable [OverlayPortalController] used in dropdown logic.
///
/// TODO: Delete this after selection dropdowns have been refactored to use [MyoroDropdown].
final class MyoroOverlayPortalController extends OverlayPortalController with ChangeNotifier {
  @override
  void show() {
    super.show();
    notifyListeners();
  }

  @override
  void hide() {
    super.hide();
    notifyListeners();
  }
}
