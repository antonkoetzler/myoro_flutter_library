// NOTE:
// 1. [MyoroSingularDropdown] & [MyoroMultiDropdown] should not be one singular [Widget]
//    as one controller for item type of dropdown complicates the logic as if a dropdown
//    that only accepts one item is used, using a [List] of selected items is smelly.
// 2. Given point 1, the shared logic of both [MyoroSingularDropdown] & [MyoroMultiDropdown]
//    made it better to conjoin both [Widget]s into one file.

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum to distinguish if we are working with a [MyoroSingularDropdown] or [MyoroMultiDropdown].
enum _MyoroDropdownEnum {
  singular,
  multi;

  bool get isSingular => this == singular;
  bool get isMulti => this == multi;
}

/// Generic controller to call [MyoroSingularDropdown] & [MyoroMultiDropdown] functions.
final class _MyoroDropdownController<T> {
  /// Distinguish what kind of dropdown we are working with.
  late final _MyoroDropdownEnum _dropdownType;

  /// Manages the selected items for both [_singularController] & [_multiController].
  final _selectedItemsNotifier = ValueNotifier<Set<T>>({});

  final MyoroSingularDropdownController<T>? _singularController;
  final MyoroMultiDropdownController<T>? _multiController;

  _MyoroDropdownController(this._singularController, this._multiController) {
    _dropdownType = _singularController != null ? _MyoroDropdownEnum.singular : _MyoroDropdownEnum.multi;
  }

  void dispose() {
    _selectedItemsNotifier.dispose();
    _singularController?.dispose();
    _multiController?.dispose();
  }

  bool isSelected(T item) {
    return _selectedItems.contains(item);
  }

  void selectItem(T item) {
    assert(!isSelected(item));
    _selectedItemsNotifier.value = (_dropdownType.isSingular ? {} : Set.from(_selectedItems))..add(item);
    _singularController?.selectItem(item);
    _multiController?.selectItems([item]);
  }

  void deselectItem(T item) {
    assert(isSelected(item));
    _selectedItemsNotifier.value = Set.from(_selectedItems)..remove(item);
    _singularController?.deselectItem();
    _multiController?.deselectItems([item]);
  }

  Set<T> get _selectedItems => _selectedItemsNotifier.value;
}

/// [_Dropdown] that only selects one item at a time.
final class MyoroSingularDropdown<T> extends StatelessWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  const MyoroSingularDropdown({
    super.key,
    required this.configuration,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return _Dropdown._(
      key,
      configuration,
      singularController: controller,
    );
  }
}

/// [_Dropdown] that selects multiple items at a time.
final class MyoroMultiDropdown<T> extends StatelessWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  const MyoroMultiDropdown({
    super.key,
    required this.configuration,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return _Dropdown._(
      key,
      configuration,
      multiController: controller,
    );
  }
}

/// The generic class for both [MyoroSingularDropdown] & [MyoroMultiDropdown].
final class _Dropdown<T> extends StatefulWidget {
  final MyoroDropdownConfiguration<T> _configuration;
  final MyoroSingularDropdownController<T>? singularController;
  final MyoroMultiDropdownController<T>? multiController;

  const _Dropdown._(
    Key? key,
    this._configuration, {
    this.singularController,
    this.multiController,
  }) : super(key: key);

  @override
  State<_Dropdown<T>> createState() => _DropdownState<T>();
}

final class _DropdownState<T> extends State<_Dropdown<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;
  MyoroSingularDropdownController<T>? get _singularController => widget.singularController;
  MyoroMultiDropdownController<T>? get _multiController => widget.multiController;

  /// Controller to call functions for both [_singularController] & [_multiController].
  late final _controller = _MyoroDropdownController<T>(_singularController, _multiController);

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
            child: _Menu(_controller, _configuration),
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
  void dispose() {
    _controller.dispose();
    super.dispose();
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

final class _Menu<T> extends StatelessWidget {
  final _MyoroDropdownController<T> _controller;
  final MyoroDropdownConfiguration<T> _configuration;

  const _Menu(this._controller, this._configuration);

  MyoroMenuItem _itemBuilder(T item) {
    final menuItem = _configuration.itemBuilder(item);
    return menuItem.copyWith(
      onPressed: () {
        menuItem.onPressed?.call();
        _controller.isSelected(item) ? _controller.deselectItem(item) : _controller.selectItem(item); // TODO: You are here.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      dataConfiguration: _configuration.dataConfiguration,
      itemBuilder: _itemBuilder,
    );
  }
}
