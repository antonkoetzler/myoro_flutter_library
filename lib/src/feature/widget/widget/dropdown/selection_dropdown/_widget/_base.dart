part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Base [Widget] of a selection dropdown.
final class _Base<T> extends StatefulWidget {
  /// Default constructor.
  const _Base(this._style, this._state);

  /// Style.
  final MyoroDropdownStyle _style;

  /// State.
  final MyoroSelectionDropdownState<T> _state;

  /// Create state function.
  @override
  State<_Base<T>> createState() => _BaseState<T>();
}
