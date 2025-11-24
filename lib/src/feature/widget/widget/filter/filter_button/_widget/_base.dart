part of '../bundle/myoro_field_button_bundle.dart';

/// Base [Widget] of a filter button.
class _Base<T> extends StatefulWidget {
  /// Default value of [style].
  static const _styleDefaultValue = MyoroFilterButtonStyle();

  /// Default value of [closeButtonIcon].
  static const closeButtonIconDefaultValue = Icons.close;

  /// Default constructor.
  const _Base(this._state, {super.key, this.style = _styleDefaultValue});

  /// State.
  final MyoroFilterButtonState<T> _state;

  /// Style.
  final MyoroFilterButtonStyle style;

  /// Create state function.
  @override
  State<_Base<T>> createState() {
    return _BaseState<T>();
  }
}
