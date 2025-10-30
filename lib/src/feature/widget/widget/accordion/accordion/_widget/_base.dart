part of '../bundle/myoro_accordion_bundle.dart';

/// Base accordion [Widget].
final class _Base<T> extends StatefulWidget {
  const _Base(this._style, this._state);

  /// Style.
  final MyoroAccordionStyle _style;

  /// State.
  final MyoroAccordionState<T> _state;

  /// Create state function.
  @override
  State<_Base<T>> createState() => _BaseState<T>();
}
