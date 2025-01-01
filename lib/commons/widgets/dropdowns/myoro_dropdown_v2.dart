// NOTE:
// 1. [MyoroSingularDropdown] & [MyoroMultiDropdown] should not be one singular [Widget]
//    as one controller for item type of dropdown complicates the logic as if a dropdown
//    that only accepts one item is used, using a [List] of selected items is smelly.
// 2. Given point 1, the shared logic of both [MyoroSingularDropdown] & [MyoroMultiDropdown]
//    made it better to conjoin both [Widget]s into one file.

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [_MyoroDropdown] that only selects one item at a time.
final class MyoroSingularDropdown<T> extends StatelessWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  const MyoroSingularDropdown({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _MyoroDropdown._(key, configuration);
  }
}

/// [_MyoroDropdown] that selects multiple items at a time.
final class MyoroMultiDropdown<T> extends StatelessWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  const MyoroMultiDropdown({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _MyoroDropdown._(key, configuration);
  }
}

/// The generic class for both [MyoroSingularDropdown] & [MyoroMultiDropdown].
final class _MyoroDropdown<T> extends StatefulWidget {
  final MyoroDropdownConfiguration<T> _configuration;

  const _MyoroDropdown._(
    Key? key,
    this._configuration,
  ) : super(key: key);

  @override
  State<_MyoroDropdown<T>> createState() => _MyoroDropdownState<T>();
}

final class _MyoroDropdownState<T> extends State<_MyoroDropdown<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;

  /// [GlobalKey] of [_Input] to get it's position on the screen to position [_overlayEntry] which holds [_Dropdown].
  final _inputKey = GlobalKey();

  /// The [OverlayEntry] to display [_Dropdown].
  OverlayEntry? _overlayEntry;

  OverlayEntry _createOverlay() {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownV2ThemeExtension>();

    final inputRenderBox = _inputKey.currentContext!.findRenderObject() as RenderBox;
    final inputPosition = inputRenderBox.localToGlobal(Offset.zero);
    final inputSize = inputRenderBox.size;

    return OverlayEntry(
      builder: (_) {
        return Positioned(
          width: inputSize.width,
          top: inputPosition.dy + inputSize.height + themeExtension.inputDropdownSpacing,
          left: inputPosition.dx,
          child: Material(
            color: MyoroColorTheme.transparent,
            child: _Dropdown(_configuration),
          ),
        );
      },
    );
  }

  void _showOverlay() {
    _removeOverlay();
    _overlayEntry = _createOverlay();
    context.overlay.insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          _Input(_inputKey),
          _TriggerArea(() => _overlayEntry == null ? _showOverlay() : _removeOverlay()),
        ],
      ),
    );
  }
}

final class _Input extends StatelessWidget {
  final GlobalKey _key;

  const _Input(this._key);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownV2ThemeExtension>();

    return MyoroInput(
      key: _key,
      configuration: MyoroInputConfiguration(
        inputStyle: themeExtension.inputStyle,
      ),
    );
  }
}

final class _TriggerArea extends StatelessWidget {
  final VoidCallback _onPressed;

  const _TriggerArea(this._onPressed);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: MyoroColorTheme.transparent,
      hoverColor: MyoroColorTheme.transparent,
      splashColor: MyoroColorTheme.transparent,
      highlightColor: MyoroColorTheme.transparent,
      onTap: _onPressed,
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}

final class _Dropdown<T> extends StatelessWidget {
  final MyoroDropdownConfiguration<T> _configuration;

  const _Dropdown(this._configuration);

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      dataConfiguration: _configuration.dataConfiguration,
      itemBuilder: _configuration.itemBuilder,
    );
  }
}
