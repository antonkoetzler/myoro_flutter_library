import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base snack bar class extending [SnackBar] that serves as a container for
/// the [MyoroSnackBar] that will be shown within the [MyoroSnackBarContainer].
class MyoroSnackBarContainer extends SnackBar {
  static const durationDefaultValue = Duration(seconds: 3);

  MyoroSnackBarContainer({
    // Key for whatever purpose.
    Key? key,

    // Theme extension that needs to be passed via caller's [BuildContext].
    required MyoroSnackBarContainerThemeExtension themeExtension,

    // Duration that the snack bar will be shown for.
    Duration duration = durationDefaultValue,

    // Snack bar widget to be displayed.
    required MyoroSnackBar snackBar,
  }) : super(
         key: key,
         backgroundColor: themeExtension.primaryColor,
         behavior: themeExtension.behavior,
         margin: themeExtension.margin,
         padding: themeExtension.padding,
         elevation: themeExtension.elevation,
         dismissDirection: themeExtension.dismissDirection,
         duration: duration,
         content: snackBar,
       );
}
