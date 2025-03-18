// NOTE:
// 1. [MyoroSingularDropdown] & [MyoroMultiDropdown] should not be one singular [Widget]
//    as one controller for item type of dropdown complicates the logic as if a dropdown
//    that only accepts one item is used, using a [List] of selected items is smelly.
// 2. Given point 1, the shared logic of both [MyoroSingularDropdown] & [MyoroMultiDropdown]
//    made it better to conjoin both [Widget]s into one file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when a [MyoroSingularDropdown]'s selected item is changed.
typedef MyoroSingularDropdownOnChanged<T> = void Function(T? selectedItem);

/// Function executed when a [MyoroMultiDropdown]'s selected items are changed.
typedef MyoroMultiDropdownOnChanged<T> = void Function(List<T> selectedItems);

/// Function executed when the checkbox next to the [MyoroSingularDropdown] is changed.
typedef MyoroSingularDropdownCheckboxOnChanged<T> = void Function(
    bool enabled, T? item);

/// Function executed when the checkbox next to the [MyoroMultiDropdown] is changed.
typedef MyoroMultiDropdownCheckboxOnChanged<T> = void Function(
    bool enabled, List<T> items);

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
  }

  bool _isSelected(T item) {
    return _selectedItems.contains(item);
  }

  void _selectItem(T item) {
    assert(!_isSelected(item));
    _selectedItemsNotifier.value =
        (_dropdownType.isSingular ? {} : Set.from(_selectedItems))..add(item);
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

  /// Function executed when the selected item changes.
  final MyoroSingularDropdownOnChanged<T>? onChanged;

  /// If provided, places a checkbox next to [_Input].
  final MyoroSingularDropdownCheckboxOnChanged<T>? checkboxOnChanged;

  /// Controller.
  final MyoroSingularDropdownController<T>? controller;

  const MyoroSingularDropdown({
    super.key,
    required this.configuration,
    this.onChanged,
    this.checkboxOnChanged,
    this.controller,
  });

  static Finder finder<T>({
    MyoroDropdownConfiguration<T>? configuration,
    bool configurationEnabled = false,
    String? label,
    bool labelEnabled = false,
    TextStyle? labelTextStyle,
    bool labelTextStyleEnabled = false,
    MyoroDataConfiguration<T>? dataConfiguration,
    bool dataConfigurationEnabled = false,
    MyoroMenuItemBuilder<T>? itemBuilder,
    bool itemBuilderEnabled = false,
    MyoroDropdownConfigurationItemLabelBuilder<T>? itemLabelBuilder,
    bool itemLabelBuilderEnabled = false,
    bool? enabled,
    bool enabledEnabled = false,
    bool? allowItemClearing,
    bool allowItemClearingEnabled = false,
    double? menuMaxHeight,
    bool menuMaxHeightEnabled = false,
    MyoroMenuSearchCallback<T>? menuSearchCallback,
    bool menuSearchCallbackEnabled = false,
    MyoroSingularDropdownOnChanged<T>? onChanged,
    bool onChangedEnabled = false,
    MyoroSingularDropdownCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = false,
    MyoroSingularDropdownController<T>? controller,
    bool controllerEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroSingularDropdown<T> &&
          (configurationEnabled ? w.configuration == configuration : true) &&
          (labelEnabled ? w.configuration.label == label : true) &&
          (labelTextStyleEnabled
              ? w.configuration.labelTextStyle == labelTextStyle
              : true) &&
          (dataConfigurationEnabled
              ? w.configuration.dataConfiguration == dataConfiguration
              : true) &&
          (itemBuilderEnabled
              ? w.configuration.itemBuilder == itemBuilder
              : true) &&
          (itemLabelBuilderEnabled
              ? w.configuration.itemLabelBuilder == itemLabelBuilder
              : true) &&
          (enabledEnabled ? w.configuration.enabled == enabled : true) &&
          (allowItemClearingEnabled
              ? w.configuration.allowItemClearing == allowItemClearing
              : true) &&
          (menuMaxHeightEnabled
              ? w.configuration.menuMaxHeight == menuMaxHeight
              : true) &&
          (menuSearchCallbackEnabled
              ? w.configuration.menuSearchCallback == menuSearchCallback
              : true) &&
          (onChangedEnabled ? w.onChanged == onChanged : true) &&
          (checkboxOnChangedEnabled
              ? w.checkboxOnChanged == checkboxOnChanged
              : true) &&
          (controllerEnabled ? w.controller == controller : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _Dropdown._(
      key,
      _MyoroDropdownEnum.singular,
      configuration,
      singularOnChanged: onChanged,
      singularCheckboxOnChanged: checkboxOnChanged,
      singularController: controller,
    );
  }
}

/// [_Dropdown] that selects multiple items at a time.
final class MyoroMultiDropdown<T> extends StatelessWidget {
  /// Dropdown configuration.
  final MyoroDropdownConfiguration<T> configuration;

  /// Function executed when the selected item(s) changes.
  final MyoroMultiDropdownOnChanged<T>? onChanged;

  /// If provided, places a checkbox next to [_Input].
  final MyoroMultiDropdownCheckboxOnChanged<T>? checkboxOnChanged;

  /// Controller.
  final MyoroMultiDropdownController<T>? controller;

  const MyoroMultiDropdown({
    super.key,
    required this.configuration,
    this.onChanged,
    this.checkboxOnChanged,
    this.controller,
  });

  static Finder finder<T>({
    MyoroDropdownConfiguration<T>? configuration,
    bool configurationEnabled = false,
    String? label,
    bool labelEnabled = false,
    TextStyle? labelTextStyle,
    bool labelTextStyleEnabled = false,
    MyoroDataConfiguration<T>? dataConfiguration,
    bool dataConfigurationEnabled = false,
    MyoroMenuItemBuilder<T>? itemBuilder,
    bool itemBuilderEnabled = false,
    MyoroDropdownConfigurationItemLabelBuilder<T>? itemLabelBuilder,
    bool itemLabelBuilderEnabled = false,
    bool? enabled,
    bool enabledEnabled = false,
    bool? allowItemClearing,
    bool allowItemClearingEnabled = false,
    double? menuMaxHeight,
    bool menuMaxHeightEnabled = false,
    MyoroMenuSearchCallback<T>? menuSearchCallback,
    bool menuSearchCallbackEnabled = false,
    MyoroMultiDropdownOnChanged<T>? onChanged,
    bool onChangedEnabled = false,
    MyoroMultiDropdownCheckboxOnChanged<T>? checkboxOnChanged,
    bool checkboxOnChangedEnabled = false,
    MyoroMultiDropdownController<T>? controller,
    bool controllerEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroMultiDropdown<T> &&
          (configurationEnabled ? w.configuration == configuration : true) &&
          (labelEnabled ? w.configuration.label == label : true) &&
          (labelTextStyleEnabled
              ? w.configuration.labelTextStyle == labelTextStyle
              : true) &&
          (dataConfigurationEnabled
              ? w.configuration.dataConfiguration == dataConfiguration
              : true) &&
          (itemBuilderEnabled
              ? w.configuration.itemBuilder == itemBuilder
              : true) &&
          (itemLabelBuilderEnabled
              ? w.configuration.itemLabelBuilder == itemLabelBuilder
              : true) &&
          (enabledEnabled ? w.configuration.enabled == enabled : true) &&
          (allowItemClearingEnabled
              ? w.configuration.allowItemClearing == allowItemClearing
              : true) &&
          (menuMaxHeightEnabled
              ? w.configuration.menuMaxHeight == menuMaxHeight
              : true) &&
          (menuSearchCallbackEnabled
              ? w.configuration.menuSearchCallback == menuSearchCallback
              : true) &&
          (onChangedEnabled ? w.onChanged == onChanged : true) &&
          (checkboxOnChangedEnabled
              ? w.checkboxOnChanged == checkboxOnChanged
              : true) &&
          (controllerEnabled ? w.controller == controller : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _Dropdown._(
      key,
      _MyoroDropdownEnum.multi,
      configuration,
      multiOnChanged: onChanged,
      multiCheckboxOnChanged: checkboxOnChanged,
      multiController: controller,
    );
  }
}

/// The generic class for both [MyoroSingularDropdown] & [MyoroMultiDropdown].
final class _Dropdown<T> extends StatefulWidget {
  final _MyoroDropdownEnum _dropdownType;
  final MyoroDropdownConfiguration<T> _configuration;

  final MyoroSingularDropdownOnChanged<T>? singularOnChanged;
  final MyoroSingularDropdownCheckboxOnChanged<T>? singularCheckboxOnChanged;
  final MyoroSingularDropdownController<T>? singularController;

  final MyoroMultiDropdownOnChanged<T>? multiOnChanged;
  final MyoroMultiDropdownCheckboxOnChanged<T>? multiCheckboxOnChanged;
  final MyoroMultiDropdownController<T>? multiController;

  const _Dropdown._(
    Key? key,
    this._dropdownType,
    this._configuration, {
    this.singularOnChanged,
    this.singularCheckboxOnChanged,
    this.singularController,
    this.multiOnChanged,
    this.multiCheckboxOnChanged,
    this.multiController,
  }) : super(key: key);

  @override
  State<_Dropdown<T>> createState() => _DropdownState<T>();
}

final class _DropdownState<T> extends State<_Dropdown<T>> {
  _MyoroDropdownEnum get _dropdownType => widget._dropdownType;
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;
  MyoroSingularDropdownOnChanged<T>? get _singularOnChanged =>
      widget.singularOnChanged;
  MyoroSingularDropdownCheckboxOnChanged<T>? get _singularCheckboxOnChanged =>
      widget.singularCheckboxOnChanged;
  MyoroSingularDropdownController<T>? get _singularController =>
      widget.singularController;
  MyoroMultiDropdownOnChanged<T>? get _multiOnChanged => widget.multiOnChanged;
  MyoroMultiDropdownCheckboxOnChanged<T>? get _multiCheckboxOnChanged =>
      widget.multiCheckboxOnChanged;
  MyoroMultiDropdownController<T>? get _multiController =>
      widget.multiController;

  /// [FocusNode] [_Dropdown] in order to be able to click anywhere but [_Menu] to close [_Menu].
  final _focusNode = FocusNode();

  /// Controller to call functions for both [_singularController] & [_multiController].
  late final _controller = _MyoroDropdownController<T>(
      _dropdownType, _singularController, _multiController);

  /// [GlobalKey] of [_Input] to get it's position on the screen to position [_overlayEntry] which holds [_Dropdown].
  final _inputKey = GlobalKey();

  /// The [OverlayEntry] to display [_Dropdown].
  OverlayEntry? _overlayEntry;

  void _focusNodeListener() {
    if (_focusNode.hasFocus) return;
    _removeOverlay();
  }

  OverlayEntry _createOverlay() {
    final themeExtension =
        context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    final RenderBox inputRenderBox =
        _inputKey.currentContext!.findRenderObject() as RenderBox;
    final Offset inputPosition = inputRenderBox.localToGlobal(Offset.zero);
    final Size inputSize = inputRenderBox.size;

    final menuMaxHeight =
        _configuration.menuMaxHeight ?? themeExtension.menuMaxHeight;
    final inputDropdownSpacing = themeExtension.inputDropdownSpacing;

    // Start and end positions of the menu when positioned below [_Input].
    final double menuYStartBottomPosition =
        inputPosition.dy + inputSize.height + inputDropdownSpacing;
    final double menuYEndBottomPosition =
        menuYStartBottomPosition + menuMaxHeight;

    // Stand position of the menu when positioned above [_Input].
    final double menuYStartUpperPosition =
        inputPosition.dy - menuMaxHeight - inputDropdownSpacing;

    // If negative, [_Menu] will be clipped by the bottom of the screen.
    final bool positionMenuAboveInput =
        context.mediaQuery.size.height - menuYEndBottomPosition < 10;

    return OverlayEntry(
      builder: (_) {
        return Positioned(
          width: inputSize.width,
          top: positionMenuAboveInput
              ? menuYStartUpperPosition
              : menuYStartBottomPosition,
          left: inputPosition.dx,
          child: Material(
            color: MyoroColorTheme.transparent,
            child: _Menu(
              _controller,
              _configuration,
              _singularOnChanged,
              _multiOnChanged,
              _removeOverlay,
            ),
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
            _Input(_inputKey, _configuration, _controller,
                _singularCheckboxOnChanged, _multiCheckboxOnChanged),
            if (_configuration.enabled)
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
  final MyoroSingularDropdownCheckboxOnChanged<T>? _singularCheckboxOnChanged;
  final MyoroMultiDropdownCheckboxOnChanged<T>? _multiCheckboxOnChanged;

  const _Input(
    this._key,
    this._configuration,
    this._controller,
    this._singularCheckboxOnChanged,
    this._multiCheckboxOnChanged,
  );

  @override
  State<_Input<T>> createState() => _InputState<T>();
}

final class _InputState<T> extends State<_Input<T>> {
  GlobalKey get _key => widget._key;
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;
  _MyoroDropdownController<T> get _controller => widget._controller;
  MyoroSingularDropdownCheckboxOnChanged<T>? get _singularCheckboxOnChanged =>
      widget._singularCheckboxOnChanged;
  MyoroMultiDropdownCheckboxOnChanged<T>? get _multiCheckboxOnChanged =>
      widget._multiCheckboxOnChanged;

  bool get _checkboxOnChangedNotNull {
    return switch (_controller._dropdownType) {
      _MyoroDropdownEnum.singular => _singularCheckboxOnChanged != null,
      _MyoroDropdownEnum.multi => _multiCheckboxOnChanged != null,
    };
  }

  final _inputController = TextEditingController();
  late bool _enabled = _configuration.enabled;

  void _checkboxOnChanged(bool enabled, String text) {
    setState(() {
      _enabled = enabled;
      switch (_controller._dropdownType) {
        case _MyoroDropdownEnum.singular:
          _singularCheckboxOnChanged?.call(
              _enabled,
              _controller._selectedItems.isNotEmpty
                  ? _controller._selectedItems.first
                  : null);
          break;
        case _MyoroDropdownEnum.multi:
          _multiCheckboxOnChanged?.call(
              _enabled, _controller._selectedItems.toList());
          break;
      }
    });
  }

  void _selectedItemsNotifierListener() {
    final selectedItems = _controller._selectedItems;
    final itemLabelBuilder = _configuration.itemLabelBuilder;

    _inputController.text = selectedItems.fold<String>(
      '',
      (String current, T item) =>
          '$current${current.isEmpty ? '' : ', '}${itemLabelBuilder.call(item)}',
    );
  }

  void _onCleared() {
    _inputController.clear();
  }

  @override
  void initState() {
    super.initState();
    _controller._selectedItemsNotifier
        .addListener(_selectedItemsNotifierListener);
  }

  @override
  void dispose() {
    _controller._selectedItemsNotifier
        .removeListener(_selectedItemsNotifierListener);
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return MyoroInput(
      key: _key,
      configuration: MyoroInputConfiguration(
        label: _configuration.label,
        labelTextStyle: _configuration.labelTextStyle,
        inputStyle: themeExtension.inputStyle,
        readOnly: true,
        enabled: _configuration.enabled,
        showClearTextButton: _configuration.allowItemClearing,
        controller: _inputController,
        onCleared: _onCleared,
        checkboxOnChanged:
            _checkboxOnChangedNotNull ? _checkboxOnChanged : null,
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
            right: (selectedItems.isNotEmpty &&
                    _configuration.allowItemClearing != false)
                ? 40
                : 0,
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
  final MyoroSingularDropdownOnChanged<T>? _singularOnChanged;
  final MyoroMultiDropdownOnChanged<T>? _multiOnChanged;
  final VoidCallback _removeOverlayCallback;

  const _Menu(
    this._controller,
    this._configuration,
    this._singularOnChanged,
    this._multiOnChanged,
    this._removeOverlayCallback,
  );

  MyoroMenuItem _itemBuilder(T item) {
    final menuItem = _configuration.itemBuilder(item);
    return menuItem.copyWith(
      isHovered: _controller._isSelected(item),
      onPressed: () {
        menuItem.onPressed?.call();
        _controller._isSelected(item)
            ? _controller.deselectItem(item)
            : _controller._selectItem(item);
        switch (_controller._dropdownType) {
          case _MyoroDropdownEnum.singular:
            _singularOnChanged?.call(_controller._selectedItems.isNotEmpty
                ? _controller._selectedItems.first
                : null);
            _removeOverlayCallback();
            break;
          case _MyoroDropdownEnum.multi:
            _multiOnChanged?.call(_controller._selectedItems.toList());
            break;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      dataConfiguration: _configuration.dataConfiguration,
      itemBuilder: _itemBuilder,
      constraints: BoxConstraints(
        maxHeight: _configuration.menuMaxHeight ??
            context
                .resolveThemeExtension<MyoroDropdownThemeExtension>()
                .menuMaxHeight,
      ),
      searchCallback: _configuration.menuSearchCallback,
    );
  }
}
