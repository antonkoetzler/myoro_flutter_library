import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simplifying scrollable widgets (i.e. creating a simple or lazy loaded scrollable).
///
/// If you are getting errors using this widget, consider using a [SizedBox] with def-
/// ined widths/heights & or wrap the [MyoroScrollable] with [Expanded]/[Flexible].
final class MyoroScrollable extends StatefulWidget {
  /// Type of list.
  final MyoroScrollableEnum scrollableType;

  /// Direction of the list.
  final Axis? direction;

  /// Children inside of the list.
  final List<Widget> children;

  const MyoroScrollable({
    super.key,
    required this.scrollableType,
    this.direction,
    required this.children,
  });

  @override
  State<MyoroScrollable> createState() => _MyoroScrollableState();
}

final class _MyoroScrollableState extends State<MyoroScrollable> {
  MyoroScrollableEnum get _scrollableType => widget.scrollableType;
  Axis? get _direction => widget.direction;
  List<Widget> get _children => widget.children;

  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _scrollableType.widget(
      _scrollController,
      _direction ?? context.resolveThemeExtension<MyoroScrollableThemeExtension>().direction,
      _children,
    );
  }
}
