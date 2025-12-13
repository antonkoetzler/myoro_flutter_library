import 'package:flutter/material.dart';

/// Extension for [ScrollController].
extension MyoroScrollControllerExtension on ScrollController {
  /// Returns if the [ScrollController] can scroll.
  bool get canScroll {
    return hasClients ? position.maxScrollExtent > position.minScrollExtent : false;
  }
}
