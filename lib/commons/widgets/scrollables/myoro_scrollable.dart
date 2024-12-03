import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simplifying scrollable widgets (i.e. creating a simple or lazy loaded scrollable).
///
/// If you are getting errors using this widget, consider using a [SizedBox] with def-
/// ined widths/heights & or wrap the [MyoroScrollable] with [Expanded]/[Flexible].
final class MyoroScrollable extends StatelessWidget {
  /// Type of list.
  final MyoroScrollableEnum scrollableType;

  /// Direction of the list.
  final Axis? direction;

  /// Padding of the content within the [MyoroScrollable].
  final EdgeInsets? padding;

  /// [ScrollController] when the scrollbar needs to be adjusted programmatically.
  final ScrollController? scrollController;

  /// Children inside of the list.
  final List<Widget> children;

  const MyoroScrollable({
    super.key,
    required this.scrollableType,
    this.direction,
    this.padding,
    this.scrollController,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return scrollableType.widget(
      scrollController,
      direction ?? context.resolveThemeExtension<MyoroScrollableThemeExtension>().direction,
      padding,
      children,
    );
  }
}
