import 'dart:io';

import 'package:flutter/foundation.dart';

/// Used for any platform-specific operations.
///
/// Various [isWeb] checks need to be done because Flutter likes to crash and be fucky when executing [Platform] commands on web.
final class MyoroPlatformHelper {
  static bool get isDesktop => isWeb ? false : Platform.isWindows || Platform.isLinux || Platform.isMacOS;
  static bool get isMobile => isWeb ? false : Platform.isAndroid || Platform.isIOS;
  static bool get isWindows => isWeb ? false : Platform.isWindows;
  static bool get isLinux => isWeb ? false : Platform.isLinux;
  static bool get isMacOS => isWeb ? false : Platform.isMacOS;
  static bool get isAndroid => isWeb ? false : Platform.isAndroid;
  static bool get isIOS => isWeb ? false : Platform.isIOS;
  static bool get isWeb => kIsWeb;
}
