// coverage:ignore-file

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

/// Function to open a URL.
///
/// Returns true is successful and false otherwise.
Future<bool> myoroLaunchUrl(String url) async {
  final uri = Uri.parse(url);
  try {
    if (!await canLaunchUrl(uri)) return false;
    await launchUrl(uri);
  } catch (error, stackTrace) {
    if (kDebugMode) {
      print('[myoroLaunchUrl]: Error launching URL: "$error".');
      print('Stack trace:\n$stackTrace');
    }
    return false;
  }
  return true;
}
