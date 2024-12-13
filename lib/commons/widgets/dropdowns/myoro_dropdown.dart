import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Callback executed when [MyoroDropdownController.selectedItemsNotifier] changes.
typedef MyoroDropdownOnChangeItems<T> = void Function(List<T> items);

/// [String] builder for displaying the selected item in the [_Input].
typedef MyoroDropdownItemLabelBuilder<T> = String Function(T item);

/// A customizable dropdown widgets with features like multi-selection, search, etc.
final class MyoroDropdown<T> extends StatefulWidget {
  /// Controller to externally manage the dropdown's state.
  final MyoroDropdownController<T>? controller;

  /// Label at the top of [_Input].
  final String? label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Enables multi-selection.
  final bool? enableMultiSelection;

  /// Enables search functionality.
  final MyoroMenuSearchCallback<T>? searchCallback;

  /// Callback executed when [controller.selectedItemsNotifier] changes.
  final MyoroDropdownOnChangeItems<T>? onChangedItems;

  /// Configuration for loading the dropdown's items.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// [String] of the selected item(s) that are being displayed in the [_Input].
  final MyoroDropdownItemLabelBuilder<T> itemLabelBuilder;

  /// [_Dropdown] [MyoroMenuItem] builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  const MyoroDropdown({
    super.key,
    this.controller,
    this.label,
    this.labelTextStyle,
    this.enableMultiSelection,
    this.searchCallback,
    this.onChangedItems,
    required this.dataConfiguration,
    required this.itemLabelBuilder,
    required this.itemBuilder,
  });

  @override
  State<MyoroDropdown<T>> createState() => _MyoroDropdownState<T>();
}

final class _MyoroDropdownState<T> extends State<MyoroDropdown<T>> {
  String? get _label => widget.label;
  TextStyle? get _labelTextStyle => widget.labelTextStyle;
  bool get _enableMultiSelection => widget.enableMultiSelection ?? false;
  MyoroDropdownOnChangeItems<T>? get _onChangedItems => widget.onChangedItems;
  MyoroMenuSearchCallback<T>? get _searchCallback => widget.searchCallback;
  MyoroDataConfiguration<T> get _dataConfiguration => widget.dataConfiguration;
  MyoroDropdownItemLabelBuilder<T> get _itemLabelBuilder => widget.itemLabelBuilder;
  MyoroMenuItemBuilder<T> get _itemBuilder => widget.itemBuilder;

  MyoroDropdownController<T>? _localController;
  MyoroDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroDropdownController());
  }

  /// To disable the dropdown when elsewhere is clicked.
  final _focusNode = FocusNode();

  /// Provides [_enableMultiSelection] & [_itemBuilder] to [_controller].
  void _supplyController() {
    _controller.enableMultiSelection = _enableMultiSelection;
    _controller.itemLabelBuilder = _itemLabelBuilder;
  }

  /// To close the dropdown when clicked elsewhere.
  void _focusNodeListener() {
    if (_focusNode.hasFocus) return;
    _controller.toggleDropdown(false);
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_focusNodeListener);
    _supplyController();
    _controller.selectedItemsNotifier.addListener(() => _onChangedItems?.call(_controller.selectedItems));
  }

  @override
  void didUpdateWidget(covariant MyoroDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _supplyController();
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return Focus(
      focusNode: _focusNode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Input(
            _label,
            _labelTextStyle,
            _controller,
            _focusNode,
          ),
          ValueListenableBuilder(
            valueListenable: _controller.displayDropdownNotifier,
            builder: (_, bool displayDropdown, __) => displayDropdown
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: themeExtension.spacing,
                        ),
                        child: _Dropdown(
                          _enableMultiSelection,
                          _controller,
                          _searchCallback,
                          _dataConfiguration,
                          _itemBuilder,
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

final class _Input<T> extends StatefulWidget {
  final String? _label;
  final TextStyle? _labelTextStyle;
  final MyoroDropdownController<T> _controller;
  final FocusNode _focusNode;

  const _Input(
    this._label,
    this._labelTextStyle,
    this._controller,
    this._focusNode,
  );

  @override
  State<_Input<T>> createState() => _InputState<T>();
}

final class _InputState<T> extends State<_Input<T>> {
  String? get _label => widget._label;
  TextStyle? get _labelTextStyle => widget._labelTextStyle;
  MyoroDropdownController<T> get _controller => widget._controller;
  FocusNode get _focusNode => widget._focusNode;

  final _inputController = TextEditingController();

  /// Set input's text in accordance with the changes to the selected items.
  void _selectedItemsNotifierListener() {
    if (_controller.selectedItems.isEmpty) _inputController.clear();
    _inputController.text = _controller.formattedItems;
  }

  @override
  void initState() {
    super.initState();
    _controller.selectedItemsNotifier.addListener(_selectedItemsNotifierListener);
  }

  @override
  void dispose() {
    _controller.selectedItemsNotifier.removeListener(_selectedItemsNotifierListener);
    _inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyoroInput(
          configuration: MyoroInputConfiguration(
            controller: _inputController,
            label: _label,
            labelTextStyle: _labelTextStyle,
            inputStyle: context.resolveThemeExtension<MyoroDropdownThemeExtension>().inputStyle,
            readOnly: true,
            onCleared: () => _controller.clear(),
          ),
        ),
        _DropdownTriggerArea(
          _controller,
          _focusNode,
        ),
      ],
    );
  }
}

final class _DropdownTriggerArea extends StatelessWidget {
  final MyoroDropdownController _controller;
  final FocusNode _focusNode;

  const _DropdownTriggerArea(
    this._controller,
    this._focusNode,
  );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: InkWell(
        focusColor: MyoroColorTheme.transparent,
        hoverColor: MyoroColorTheme.transparent,
        splashColor: MyoroColorTheme.transparent,
        highlightColor: MyoroColorTheme.transparent,
        onTap: () {
          _focusNode.requestFocus();
          _controller.toggleDropdown();
        },
        child: MyoroLayoutBuilder(
          builder: (_, BoxConstraints constraints) {
            return ValueListenableBuilder(
              valueListenable: _controller.selectedItemsNotifier,
              builder: (_, __, ___) {
                return SizedBox(
                  width: constraints.maxWidth - (_controller.selectedItems.isEmpty ? 0 : 44),
                  height: 43.1, // Size of the input.
                );
              },
            );
          },
        ),
      ),
    );
  }
}

final class _Dropdown<T> extends StatelessWidget {
  final bool _enableMultiSelection;
  final MyoroDropdownController<T> _controller;
  final MyoroMenuSearchCallback<T>? _searchCallback;
  final MyoroDataConfiguration<T> _dataConfiguration;
  final MyoroMenuItemBuilder<T> _itemBuilder;

  const _Dropdown(
    this._enableMultiSelection,
    this._controller,
    this._searchCallback,
    this._dataConfiguration,
    this._itemBuilder,
  );

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      maxWidth: double.infinity,
      searchCallback: _searchCallback,
      itemBuilder: (T item) {
        final MyoroMenuItem builtItem = _itemBuilder.call(item);
        final bool isSelected = _controller.isSelected(item);

        return builtItem.copyWith(
          isHovered: isSelected,
          onPressed: () {
            builtItem.onPressed?.call();
            isSelected ? _controller.removeItems([item]) : _controller.addItems([item]);
            if (!_enableMultiSelection) _controller.toggleDropdown(false);
          },
        );
      },
      dataConfiguration: _dataConfiguration,
    );
  }
}
