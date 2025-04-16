// Standard dropdown.
//
// One file that holds the implement for both
// [MyoroSingularDropdown] and [MyoroMultiDropdown].

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Singular item dropdown.
final class MyoroSingularDropdown<T> extends StatelessWidget {
  final MyoroSingularDropdownConfiguration<T> configuration;

  const MyoroSingularDropdown({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _Dropdown(configuration);
  }
}

/// Multi item dropdown.
final class MyoroMultiDropdown<T> extends StatelessWidget {
  final MyoroMultiDropdownConfiguration<T> configuration;

  const MyoroMultiDropdown({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _Dropdown(configuration);
  }
}

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T> extends StatefulWidget {
  final MyoroDropdownConfiguration<T> _configuration;

  const _Dropdown(this._configuration);

  @override
  State<_Dropdown<T>> createState() => _DropdownState<T>();
}

final class _DropdownState<T> extends State<_Dropdown<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;
  MyoroDropdownController<T> get _controller => _configuration.controller;

  /// [Bloc] of [_Dropdown].
  late final MyoroDropdownBloc<T> _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = MyoroDropdownBloc(enabled: _configuration.enabled);
    _controller.bloc = _bloc;
    _configuration.setInitiallySelectedItems();
  }

  @override
  void didUpdateWidget(covariant _Dropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.bloc = _bloc;
    _controller.toggleEnabled(_configuration.enabled);
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return BlocProvider.value(
      value: _bloc,
      child: RepaintBoundary(
        child: Row(
          spacing: themeExtension.spacing,
          children: [
            if (_configuration.checkboxOnChangedNotNull)
              _Checkbox(_configuration),
            Expanded(child: _Input(_configuration)),
          ],
        ),
      ),
    );
  }
}

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T> extends StatelessWidget {
  final MyoroDropdownConfiguration<T> _configuration;

  const _Checkbox(this._configuration);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyoroDropdownBloc<T>, MyoroDropdownState<T>>(
      listenWhen: _listenWhen,
      listener: _listener,
      buildWhen: _buildWhen,
      builder: _builder,
    );
  }

  bool _listenWhen(
    MyoroDropdownState<T> previous,
    MyoroDropdownState<T> current,
  ) {
    return previous.enabled != current.enabled;
  }

  void _listener(_, MyoroDropdownState<T> state) {
    _configuration.handleCheckboxOnChanged(state.enabled, state.selectedItems);
  }

  bool _buildWhen(
    MyoroDropdownState<T> previous,
    MyoroDropdownState<T> current,
  ) {
    return previous.enabled != current.enabled;
  }

  Widget _builder(BuildContext context, MyoroDropdownState<T> state) {
    return MyoroCheckbox(
      initialValue: state.enabled,
      onChanged: (bool enabled) => _onChanged(enabled),
    );
  }

  void _onChanged(bool enabled) {
    _configuration.controller.toggleEnabled(enabled);
  }
}

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T> extends StatefulWidget {
  final MyoroDropdownConfiguration<T> _configuration;

  const _Input(this._configuration);

  @override
  State<_Input<T>> createState() => _InputState<T>();
}

final class _InputState<T> extends State<_Input<T>> {
  MyoroDropdownConfiguration<T> get _configuration => widget._configuration;

  /// In order to pass the [Size] of the [MyoroInput] to [_InputTriggerArea] and [_Menu].
  final _inputKey = GlobalKey();
  final _inputSizeNotifier = ValueNotifier<Size?>(null);

  /// [LayerLink] of [CompositedTransformTarget] so we may position the
  /// [OverlayPortal] relative to the position of [_DropdownState].
  final _link = LayerLink();

  /// [TapRegion.groupId] of [_InputTriggerArea] and [_Menu] so [TapRegion.onTapOutside]
  /// (which closes the menu) only activates when [_InputTriggerArea]/[_Menu] is not pressed.
  late final String _tapRegionGroupId;

  final _inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tapRegionGroupId = 'MyoroDropdown#$hashCode';
  }

  @override
  void dispose() {
    _inputController.dispose();
    _inputSizeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: _configuration.controller.overlayPortalController,
      overlayChildBuilder: _overlayChildBuilder,
      child: Stack(
        children: [
          // Empty [MyoroLayoutBuilder] to always update [_inputSizeNotifier].
          MyoroLayoutBuilder(
            builder: (_, __) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                final renderBox =
                    _inputKey.currentContext!.findRenderObject() as RenderBox;
                _inputSizeNotifier.value = renderBox.size;
              });

              return BlocConsumer<MyoroDropdownBloc<T>, MyoroDropdownState<T>>(
                listenWhen: _listenWhen,
                listener: _listener,
                buildWhen: _buildWhen,
                builder: _builder,
              );
            },
          ),
          _InputTriggerArea<T>(
            _configuration,
            _inputSizeNotifier,
            _tapRegionGroupId,
          ),
        ],
      ),
    );
  }

  Widget _overlayChildBuilder(_) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    return ValueListenableBuilder(
      valueListenable: _inputSizeNotifier,
      builder: (_, Size? inputSize, __) {
        return Positioned(
          width: inputSize?.width,
          child: CompositedTransformFollower(
            link: _link,
            offset: Offset(
              0,
              (inputSize?.height ?? 0) + themeExtension.spacing,
            ),
            child: _Menu(_configuration, _tapRegionGroupId),
          ),
        );
      },
    );
  }

  bool _listenWhen(
    MyoroDropdownState<T> previous,
    MyoroDropdownState<T> current,
  ) {
    return previous.selectedItems != current.selectedItems;
  }

  void _listener(_, MyoroDropdownState<T> state) {
    _onChanged(state);
    _formatSelectedItems(state);
  }

  bool _buildWhen(
    MyoroDropdownState<T> previous,
    MyoroDropdownState<T> current,
  ) {
    return previous.enabled != current.enabled;
  }

  Widget _builder(_, MyoroDropdownState<T> state) {
    return CompositedTransformTarget(
      link: _link,
      child: MyoroInput(
        key: _inputKey,
        configuration: MyoroInputConfiguration(
          label: _configuration.label.isNotEmpty ? _configuration.label : null,
          enabled: state.enabled,
          readOnly: true,
          showClearTextButton: _configuration.allowItemClearing,
          onCleared: _configuration.controller.clear,
          controller: _inputController,
        ),
      ),
    );
  }

  void _onChanged(MyoroDropdownState<T> state) {
    _configuration.handleOnChanged(state.selectedItems);
  }

  void _formatSelectedItems(MyoroDropdownState<T> state) {
    final Set<T> selectedItems = state.selectedItems;
    final stringBuffer = StringBuffer();
    for (int i = 0; i < selectedItems.length; i++) {
      final T item = selectedItems.elementAt(i);
      stringBuffer.write(_configuration.selectedItemBuilder(item));
      if (i != selectedItems.length - 1) stringBuffer.write(', ');
    }
    _inputController.text = stringBuffer.toString();
  }
}

/// [Widget] responsible for opening the dropdown when [_Input] is pressed.
final class _InputTriggerArea<T> extends StatelessWidget {
  final MyoroDropdownConfiguration<T> _configuration;
  final ValueNotifier<Size?> _inputSizeNotifier;
  final String _tapRegionGroupId;

  const _InputTriggerArea(
    this._configuration,
    this._inputSizeNotifier,
    this._tapRegionGroupId,
  );

  @override
  Widget build(BuildContext context) {
    final inputThemeExtension =
        context.resolveThemeExtension<MyoroInputThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: _inputSizeNotifier,
      builder: (_, Size? inputSize, __) {
        return ClipRRect(
          borderRadius: inputThemeExtension.borderRadius,
          clipBehavior: Clip.hardEdge,
          child: SizedBox(
            height: inputSize?.height,
            child: BlocBuilder<MyoroDropdownBloc<T>, MyoroDropdownState<T>>(
              buildWhen: _buildWhen,
              builder: _builder,
            ),
          ),
        );
      },
    );
  }

  bool _buildWhen(
    MyoroDropdownState<T> previous,
    MyoroDropdownState<T> current,
  ) {
    return (previous.selectedItems != current.selectedItems) ||
        (previous.enabled || current.enabled);
  }

  Widget _builder(BuildContext context, MyoroDropdownState<T> state) {
    final inputThemeExtension =
        context.resolveThemeExtension<MyoroInputThemeExtension>();
    final EdgeInsets clearTextButtonPadding =
        inputThemeExtension.clearTextButtonPadding;

    final onTapUp = state.enabled ? _configuration.controller.toggleMenu : null;

    return Row(
      children: [
        Expanded(child: _InputTriggerAreaRegion(_tapRegionGroupId, onTapUp)),
        // Allows [MyoroInput._ClearTextButton] to be pressed.
        if (_configuration.allowItemClearing &&
            state.selectedItems.isNotEmpty) ...[
          SizedBox(
            width: 29,
            child: Column(
              children: [
                _InputTriggerAreaRegion(
                  _tapRegionGroupId,
                  onTapUp,
                  height: clearTextButtonPadding.top + 2,
                ),
                const Spacer(),
                _InputTriggerAreaRegion(
                  _tapRegionGroupId,
                  onTapUp,
                  height: clearTextButtonPadding.bottom + 2,
                ),
              ],
            ),
          ),
          _InputTriggerAreaRegion(
            _tapRegionGroupId,
            onTapUp,
            width: clearTextButtonPadding.right,
          ),
        ],
      ],
    );
  }
}

/// Clickable area of [_InputTriggerArea].
///
/// We create a private [Widget] just for this as we need
/// to keep [MyoroInput._ClearTextButton] clickable.
final class _InputTriggerAreaRegion extends StatelessWidget {
  final String _tapRegionGroupId;
  final VoidCallback? _onTapUp;
  final double? width;
  final double? height;

  const _InputTriggerAreaRegion(
    this._tapRegionGroupId,
    this._onTapUp, {
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final bool onTapUpNotNull = _onTapUp != null;

    return SizedBox(
      width: width,
      height: height,
      child: MouseRegion(
        cursor:
            onTapUpNotNull
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
        child: GestureDetector(
          onTapUp: onTapUpNotNull ? (_) => _onTapUp() : null,
          child: TapRegion(
            groupId: _tapRegionGroupId,
            child: Container(
              color: Colors.pink.withOpacity(0.5),
            ), // TODO: Set to transparent after
          ),
        ),
      ),
    );
  }
}

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T> extends StatelessWidget {
  final MyoroDropdownConfiguration<T> _configuration;
  final String _groupId;

  const _Menu(this._configuration, this._groupId);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: _groupId,
          onTapOutside: (_) => _toggleMenu(),
          child: BlocBuilder<MyoroDropdownBloc<T>, MyoroDropdownState<T>>(
            builder: (_, MyoroDropdownState<T> state) {
              return MyoroMenu(
                configuration: _configuration.menuConfiguration.copyWith(
                  itemBuilder:
                      (T item) => _menuItemBuilder(context, state, item),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _toggleMenu() {
    final MyoroDropdownController<T> controller = _configuration.controller;
    controller.menuShowing ? controller.hideMenu() : controller.showMenu();
  }

  MyoroMenuItem _menuItemBuilder(
    BuildContext context,
    MyoroDropdownState<T> state,
    T item,
  ) {
    final MyoroMenuItemBuilder<T> menuItemBuilder =
        _configuration.menuConfiguration.itemBuilder;
    final MyoroMenuItem menuItem = menuItemBuilder.call(item);
    return menuItem.copyWith(
      isHovered: state.selectedItems.contains(item),
      onPressed: () {
        menuItem.onPressed?.call();
        _configuration.controller.toggleItem(item);
      },
    );
  }
}
