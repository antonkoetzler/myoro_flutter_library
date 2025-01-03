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
  final _MyoroDropdownEnum _dropdownType;

  /// [MyoroSingularDropdownController] controller.
  final MyoroSingularDropdownController<T>? _singularController;

  /// [MyoroMultiDropdownController] controller.
  final MyoroMultiDropdownController<T>? _multiController;

  /// Manages the selected items for both [_singularController] & [_multiController].
  final _selectedItemsNotifier = ValueNotifier<Set<T>>({});

  _MyoroDropdownController(
    this._dropdownType,
    this._singularController,
    this._multiController,
  );

  void dispose() {
    _selectedItemsNotifier.dispose();
    _singularController?.dispose();
    _multiController?.dispose();
  }

  bool _isSelected(T item) {
    return _selectedItems.contains(item);
  }

  void _selectItem(T item) {
    assert(!_isSelected(item));
    _selectedItemsNotifier.value = (_dropdownType.isSingular ? {} : Set.from(_selectedItems))..add(item);
    _singularController?.selectItem(item);
    _multiController?.selectItems([item]);
  }

  void deselectItem(T item) {
    assert(_isSelected(item));
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
      _MyoroDropdownEnum.singular,
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
      _MyoroDropdownEnum.multi,
      configuration,
      multiController: controller,
    );
  }
}

/// The generic class for both [MyoroSingularDropdown] & [MyoroMultiDropdown].
final class _Dropdown<T> extends StatefulWidget {
  final _MyoroDropdownEnum _dropdownType;
  final MyoroDropdownConfiguration<T> _configuration;
  final MyoroSingularDropdownController<T>? singularController;
  final MyoroMultiDropdownController<T>? multiController;

  const _Dropdown._(
    Key? key,
    this._dropdownType,
    this._configuration, {
    this.singularController,
    this.multiController,
  }) : super(key: key);

  @override
  State<_Dropdown<T>> createState() => _DropdownState<T>();
}

final class _DropdownState<T> extends State<_Dropdown<T>> {
  _MyoroDropdownEnum get _dropdownType => widget._dropdownType;
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;
  MyoroSingularDropdownController<T>? get _singularController => widget.singularController;
  MyoroMultiDropdownController<T>? get _multiController => widget.multiController;

  /// [FocusNode] [_Dropdown] in order to be able to click anywhere but [_Menu] to close [_Menu].
  final _focusNode = FocusNode();

  /// Controller to call functions for both [_singularController] & [_multiController].
  late final _controller = _MyoroDropdownController<T>(_dropdownType, _singularController, _multiController);

  /// [GlobalKey] of [_Input] to get it's position on the screen to position [_overlayEntry] which holds [_Dropdown].
  final _inputKey = GlobalKey();

  /// The [OverlayEntry] to display [_Dropdown].
  OverlayEntry? _overlayEntry;

  void _focusNodeListener() {
    if (_focusNode.hasFocus) return;
    _removeOverlay();
  }

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
            child: _Menu(_controller, _configuration, _removeOverlay),
          ),
        );
      },
    );
  }

  void _showOverlay() {
    _removeOverlay();
    _overlayEntry = _createOverlay();
    context.overlay.insert(_overlayEntry!);
    _focusNode.requestFocus();
  }

  void _triggerAreaOnPressed() {
    _overlayEntry == null ? _showOverlay() : _removeOverlay();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_focusNodeListener);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Focus(
        focusNode: _focusNode,
        child: Stack(
          children: [
            _Input(_inputKey, _configuration, _controller),
            _TriggerArea(_triggerAreaOnPressed, _configuration, _controller),
          ],
        ),
      ),
    );
  }
}

final class _Input<T> extends StatefulWidget {
  final GlobalKey _key;
  final MyoroDropdownConfiguration<T> _configuration;
  final _MyoroDropdownController<T> _controller;

  const _Input(this._key, this._configuration, this._controller);

  @override
  State<_Input<T>> createState() => _InputState<T>();
}

final class _InputState<T> extends State<_Input<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;
  _MyoroDropdownController<T> get _controller => widget._controller;

  final _inputController = TextEditingController();

  void _selectedItemsNotifierListener() {
    final selectedItems = _controller._selectedItems;
    final itemLabelBuilder = _configuration.itemLabelBuilder;

    _inputController.text = selectedItems.fold<String>(
      '',
      (String current, T item) => '$current${current.isEmpty ? '' : ', '}${itemLabelBuilder.call(item)}',
    );
  }

  void _onCleared() {
    _inputController.clear();
  }

  @override
  void initState() {
    super.initState();
    _controller._selectedItemsNotifier.addListener(_selectedItemsNotifierListener);
  }

  @override
  void dispose() {
    _controller._selectedItemsNotifier.removeListener(_selectedItemsNotifierListener);
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownV2ThemeExtension>();

    return MyoroInput(
      key: widget._key,
      configuration: MyoroInputConfiguration(
        inputStyle: themeExtension.inputStyle,
        showClearTextButton: _configuration.allowItemClearing,
        controller: _inputController,
        onCleared: _onCleared,
      ),
    );
  }
}

final class _TriggerArea<T> extends StatelessWidget {
  final VoidCallback _onPressed;
  final MyoroDropdownConfiguration<T> _configuration;
  final _MyoroDropdownController<T> _controller;

  const _TriggerArea(this._onPressed, this._configuration, this._controller);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _controller._selectedItemsNotifier,
      builder: (_, Set<T> selectedItems, __) {
        return Padding(
          padding: EdgeInsets.only(
            right: (selectedItems.isNotEmpty && _configuration.allowItemClearing != false) ? 40 : 0,
          ),
          child: InkWell(
            focusColor: MyoroColorTheme.transparent,
            hoverColor: MyoroColorTheme.transparent,
            splashColor: MyoroColorTheme.transparent,
            highlightColor: MyoroColorTheme.transparent,
            onTap: _onPressed,
            child: Container(color: MyoroColorTheme.transparent),
          ),
        );
      },
    );
  }
}

final class _Menu<T> extends StatelessWidget {
  final _MyoroDropdownController<T> _controller;
  final MyoroDropdownConfiguration<T> _configuration;
  final VoidCallback _removeOverlayCallback;

  const _Menu(
    this._controller,
    this._configuration,
    this._removeOverlayCallback,
  );

  MyoroMenuItem _itemBuilder(T item) {
    final menuItem = _configuration.itemBuilder(item);
    return menuItem.copyWith(
      isHovered: _controller._isSelected(item),
      onPressed: () {
        menuItem.onPressed?.call();
        _controller._isSelected(item) ? _controller.deselectItem(item) : _controller._selectItem(item);
        if (_controller._dropdownType.isSingular) _removeOverlayCallback();
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
