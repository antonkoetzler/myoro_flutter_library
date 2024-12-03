import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base snack bar class extending [SnackBar] that serves as a container for
/// the [MyoroSnackBar] that will be shown within the [MyoroSnackBarContainer].
final class MyoroSnackBarContainer extends SnackBar {
  MyoroSnackBarContainer(
    // Context to grab [MyoroSnackBarContainerThemeExtension].
    MyoroSnackBarContainerThemeExtension themeExtension, {
    // Key for testing purposes.
    Key? key,

    // Duration that the snack bar will be shown for.
    Duration? duration,

    // Snack bar widget to be displayed.
    required MyoroSnackBar snackBar,
  }) : super(
          key: key,
          backgroundColor: themeExtension.backgroundColor,
          behavior: themeExtension.behavior,
          margin: themeExtension.margin,
          padding: themeExtension.padding,
          elevation: themeExtension.elevation,
          dismissDirection: themeExtension.dismissDirection,
          duration: themeExtension.duration,
          content: _SnackBar(snackBar),
        );
}

final class _SnackBar extends StatelessWidget {
  final MyoroSnackBar _snackBar;

  const _SnackBar(this._snackBar);

  @override
  Widget build(BuildContext context) {
    // [Row] added to prevent the snack bar from stretching horizontally.
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: _snackBar),
      ],
    );
  }
}
