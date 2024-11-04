import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Simplifying scrollable widgets (i.e. creating a simple or lazy loaded scrollable).
///
/// If you are getting errors using this widget, consider using a [SizedBox] with def-
/// ined widths/heights & or wrap the [MyoroScrollable] with [Expanded]/[Flexible].
final class MyoroScrollable extends StatefulWidget {
  /// Type of list.
  final MyoroScrollableEnum type;

  /// Direction of the list.
  final Axis? direction;

  /// Children inside of the list.
  final List<Widget> children;

  const MyoroScrollable._(this.type, this.direction, this.children);

  factory MyoroScrollable.singleChildScrollView({
    Axis? direction,
    required List<Widget> children,
  }) {
    return MyoroScrollable._(
      MyoroScrollableEnum.singleChildScrollView,
      direction,
      children,
    );
  }

  factory MyoroScrollable.customScrollView({
    Axis? direction,
    required List<Widget> children,
  }) {
    return MyoroScrollable._(
      MyoroScrollableEnum.customScrollView,
      direction,
      children,
    );
  }

  @override
  State<MyoroScrollable> createState() => _MyoroScrollableState();
}

final class _MyoroScrollableState extends State<MyoroScrollable> {
  MyoroScrollableEnum get _type => widget.type;
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
    return _type.widget(
      _scrollController,
      _direction ?? context.resolveThemeExtension<MyoroScrollableThemeExtension>().direction,
      _children,
    );
  }
}
