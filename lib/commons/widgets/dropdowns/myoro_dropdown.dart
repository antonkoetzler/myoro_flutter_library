import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Item builder to build [_Dropdown]'s items.
typedef MyoroDropdownItemBuilder<T> = MyoroMenuItem Function(T item);

/// A customizable dropdown widgets with features like multi-selection, search, etc.
final class MyoroDropdown<T> extends StatefulWidget {
  /// If the dropdown will have the functionality to search for options.
  final bool? enableSearch;

  /// TODO: Enables multi-selection.
  final bool? enableMultiSelection;

  /// Controller to externally manage the dropdown's state.
  final MyoroDropdownController<T>? controller;

  /// Configuration for loading the dropdown's items.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// [_Dropdown] [MyoroMenuItem] builder.
  final MyoroDropdownItemBuilder<T> itemBuilder;

  const MyoroDropdown({
    super.key,
    this.enableSearch,
    this.enableMultiSelection,
    this.controller,
    required this.dataConfiguration,
    required this.itemBuilder,
  });

  @override
  State<MyoroDropdown<T>> createState() => _MyoroDropdownState<T>();
}

final class _MyoroDropdownState<T> extends State<MyoroDropdown<T>> {
  bool? get _enableSearch => widget.enableSearch ?? false;
  bool? get _enableMultiSelection => widget.enableMultiSelection ?? false;
  MyoroDataConfiguration<T> get _dataConfiguration => widget.dataConfiguration;
  MyoroDropdownItemBuilder<T> get _itemBuilder => widget.itemBuilder;

  MyoroDropdownController<T>? _localController;
  MyoroDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroDropdownController());
  }

  /// To disable the dropdown when elsewhere is clicked.
  final _focusNode = FocusNode();

  void _focusNodeListener() {
    if (_focusNode.hasFocus) return;
    _controller.toggleDropdown(false);
  }

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_focusNodeListener);
  }

  @override
  void dispose() {
    if (widget.controller == null) _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Input(_controller, _focusNode, _enableSearch),
          ValueListenableBuilder(
            valueListenable: _controller.displayDropdownNotifier,
            builder: (_, bool displayDropdown, __) => displayDropdown
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: context.resolveThemeExtension<MyoroDropdownThemeExtension>().spacing),
                      _Dropdown(_dataConfiguration, _itemBuilder),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

final class _Input extends StatelessWidget {
  final MyoroDropdownController controller;
  final FocusNode focusNode;
  final bool? enableSearch;

  const _Input(this.controller, this.focusNode, this.enableSearch);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: MyoroColorTheme.transparent,
      hoverColor: MyoroColorTheme.transparent,
      splashColor: MyoroColorTheme.transparent,
      highlightColor: MyoroColorTheme.transparent,
      onTap: () {
        focusNode.requestFocus();
        controller.toggleDropdown();
      },
      child: IgnorePointer(
        child: MyoroInput(
          configuration: MyoroInputConfiguration(
            inputStyle: context.resolveThemeExtension<MyoroDropdownThemeExtension>().inputStyle,
            readOnly: enableSearch == false,
          ),
        ),
      ),
    );
  }
}

final class _Dropdown<T> extends StatelessWidget {
  final MyoroDataConfiguration<T> dataConfiguration;
  final MyoroDropdownItemBuilder<T> itemBuilder;

  const _Dropdown(this.dataConfiguration, this.itemBuilder);

  @override
  Widget build(BuildContext context) {
    return MyoroMenu(
      maxWidth: double.infinity,
      dataConfiguration: MyoroDataConfiguration(
        asyncronousItems: () async {
          return (await dataConfiguration.items).map<MyoroMenuItem>(itemBuilder).toList();
        },
      ),
    );
  }
}
