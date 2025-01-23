import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base snack bar class extending [SnackBar] that serves as a container for
/// the [MyoroSnackBar] that will be shown within the [MyoroSnackBarContainer].
///
/// NOTE: No widget showcase in the storyboard for [MyoroSnackBarContainer]
/// as it is used in [MyoroSnackBar]'s widget showcase.
final class MyoroSnackBarContainer extends SnackBar {
  MyoroSnackBarContainer({
    // Key for whatever purpose.
    Key? key,

    // Theme extension that needs to be passed via caller's [BuildContext].
    required MyoroSnackBarContainerThemeExtension themeExtension,

    // Duration that the snack bar will be shown for.
    Duration? duration,

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
          duration: themeExtension.duration,
          content: _SnackBar(snackBar),
        );

  static Finder finder({
    Color? backgroundColor,
    bool backgroundColorEnabled = false,
    SnackBarBehavior? behavior,
    bool behaviorEnabled = false,
    EdgeInsets? margin,
    bool marginEnabled = false,
    EdgeInsets? padding,
    bool paddingEnabled = false,
    double? elevation,
    bool elevationEnabled = false,
    DismissDirection? dismissDirection,
    bool dismissDirectionEnabled = false,
    Duration? duration,
    bool durationEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroSnackBarContainer &&
          (backgroundColorEnabled ? w.backgroundColor == backgroundColor : true) &&
          (behaviorEnabled ? w.behavior == behavior : true) &&
          (marginEnabled ? w.margin == margin : true) &&
          (paddingEnabled ? w.padding == padding : true) &&
          (elevationEnabled ? w.elevation == elevation : true) &&
          (dismissDirectionEnabled ? w.dismissDirection == dismissDirection : true) &&
          (durationEnabled ? w.duration == duration : true),
    );
  }
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
