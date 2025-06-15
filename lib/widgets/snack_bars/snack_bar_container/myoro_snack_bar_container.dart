import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base snack bar class extending [SnackBar] that serves as a container for
/// the [MyoroSnackBar] that will be shown within the [MyoroSnackBarContainer].
class MyoroSnackBarContainer extends SnackBar {
  MyoroSnackBarContainer({
    // Key for whatever purpose.
    Key? key,

    // Theme extension that needs to be passed via caller's [BuildContext].
    required MyoroSnackBarContainerThemeExtension themeExtension,

    // Duration that the snack bar will be shown for.
    Duration duration = const Duration(seconds: 3),

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
         content: _SnackBar(snackBar),
       );
}

final class _SnackBar extends StatelessWidget {
  final MyoroSnackBar _snackBar;

  const _SnackBar(this._snackBar);

  @override
  Widget build(BuildContext context) {
    // [Row] added to prevent the snack bar from stretching horizontally.
    return Row(mainAxisSize: MainAxisSize.min, children: [Flexible(child: _snackBar)]);
  }
}
