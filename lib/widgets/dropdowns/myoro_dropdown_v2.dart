// Standard dropdown.
//
// One file that holds the implement for both
// [MyoroSingularDropdown] and [MyoroMultiDropdown].

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Singular item dropdown.
final class MyoroSingularDropdownV2<T> extends StatelessWidget {
  final MyoroSingularDropdownV2Configuration<T> configuration;

  const MyoroSingularDropdownV2({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _Dropdown(configuration);
  }
}

/// Multi item dropdown.
final class MyoroMultiDropdownV2<T> extends StatelessWidget {
  final MyoroMultiDropdownV2Configuration<T> configuration;

  const MyoroMultiDropdownV2({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    return _Dropdown(configuration);
  }
}

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T> extends StatefulWidget {
  final MyoroDropdownV2Configuration<T> _configuration;

  const _Dropdown(this._configuration);

  @override
  State<_Dropdown<T>> createState() => _DropdownState<T>();
}

final class _DropdownState<T> extends State<_Dropdown<T>> {
  MyoroDropdownV2Configuration<T> get _configuration => widget._configuration;

  /// [Bloc] of [_Dropdown].
  late final MyoroDropdownV2Bloc<T> _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = MyoroDropdownV2Bloc(enabled: _configuration.enabled);
    _setInitiallySelectedItems();
  }

  @override
  void didUpdateWidget(covariant _Dropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _bloc.add(ToggleEnabledEvent(_configuration.enabled));
    _setInitiallySelectedItems();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDropdownV2ThemeExtension>();

    return BlocProvider.value(
      value: _bloc,
      child: RepaintBoundary(
        child: Row(
          spacing: themeExtension.spacing,
          children: [
            if (_checkboxOnChangedNotNull) _Checkbox<T>(),
            Expanded(child: _Input(_configuration)),
          ],
        ),
      ),
    );
  }

  void _setInitiallySelectedItems() {
    if (_configuration is MyoroSingularDropdownV2Configuration<T>) {
      final configuration =
          _configuration as MyoroSingularDropdownV2Configuration<T>;
      if (configuration.initialSelectedItem != null) {
        _bloc.add(SelectItemsEvent({configuration.initialSelectedItem as T}));
      }
    }
    if (_configuration is MyoroMultiDropdownV2Configuration<T>) {
      final configuration =
          _configuration as MyoroMultiDropdownV2Configuration<T>;
      if (configuration.initialSelectedItems.isNotEmpty) {
        _bloc.add(SelectItemsEvent(configuration.initialSelectedItems));
      }
    }
  }

  bool get _checkboxOnChangedNotNull {
    if (_configuration is MyoroSingularDropdownV2Configuration<T>) {
      final configuration =
          _configuration as MyoroSingularDropdownV2Configuration<T>;
      return configuration.checkboxOnChanged != null;
    }
    if (_configuration is MyoroMultiDropdownV2Configuration<T>) {
      final configuration =
          _configuration as MyoroMultiDropdownV2Configuration<T>;
      return configuration.checkboxOnChanged != null;
    }
    throw AssertionError(
      '[_DropdownState<$T>._checkboxOnchangedNotNull]: Invalid [MyoroDropdownV2Configuration<$T>] extension provided.',
    );
  }
}

/// [MyoroCheckbox] that enables/disables the dropdown.
final class _Checkbox<T> extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyoroDropdownV2Bloc<T>, MyoroDropdownV2State<T>>(
      buildWhen: _buildWhen,
      builder: (_, MyoroDropdownV2State<T> state) {
        return MyoroCheckbox(
          initialValue: state.enabled,
          onChanged: (bool enabled) => _onChanged(context),
        );
      },
    );
  }

  bool _buildWhen(
    MyoroDropdownV2State<T> previous,
    MyoroDropdownV2State<T> current,
  ) {
    return previous.enabled != current.enabled;
  }

  void _onChanged(BuildContext context) {
    final bloc = context.resolveBloc<MyoroDropdownV2Bloc<T>>();
    bloc.add(const ToggleEnabledEvent());
  }
}

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T> extends StatefulWidget {
  final MyoroDropdownV2Configuration<T> _configuration;

  const _Input(this._configuration);

  @override
  State<_Input<T>> createState() => _InputState<T>();
}

final class _InputState<T> extends State<_Input<T>> {
  MyoroDropdownV2Configuration<T> get _configuration => widget._configuration;

  late final MyoroDropdownV2Bloc<T> _bloc;

  /// In order to pass the [Size] of the [MyoroInput] to [_InputTriggerArea] and [_Menu].
  final _inputKey = GlobalKey();
  final _inputSizeNotifier = ValueNotifier<Size?>(null);

  /// [LayerLink] of [CompositedTransformTarget] so we may position the
  /// [OverlayPortal] relative to the position of [_DropdownState].
  final _link = LayerLink();

  /// Controller of [OverlayPortalController] to show/hide [_Menu].
  final _overlayPortalController = OverlayPortalController();

  /// [TapRegion.groupId] of [_InputTriggerArea] and [_Menu] so [TapRegion.onTapOutside]
  /// (which closes the menu) only activates when [_InputTriggerArea]/[_Menu] is not pressed.
  late final String _tapRegionGroupId;

  final _inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tapRegionGroupId = 'MyoroDropdown#$hashCode';
    _bloc = context.resolveBloc<MyoroDropdownV2Bloc<T>>();
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
      controller: _overlayPortalController,
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

              return BlocConsumer<
                MyoroDropdownV2Bloc<T>,
                MyoroDropdownV2State<T>
              >(
                listenWhen: _listenWhen,
                listener: _listener,
                buildWhen: _buildWhen,
                builder: _builder,
              );
            },
          ),
          _InputTriggerArea<T>(
            _inputSizeNotifier,
            _toggleMenu,
            _tapRegionGroupId,
          ),
        ],
      ),
    );
  }

  Widget _overlayChildBuilder(_) {
    final themeExtension =
        context.resolveThemeExtension<MyoroDropdownV2ThemeExtension>();
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
            child: _Menu(_configuration, _toggleMenu, _tapRegionGroupId),
          ),
        );
      },
    );
  }

  void _toggleMenu() {
    _overlayPortalController.isShowing
        ? _overlayPortalController.hide()
        : _overlayPortalController.show();
  }

  bool _listenWhen(
    MyoroDropdownV2State<T> previous,
    MyoroDropdownV2State<T> current,
  ) {
    return previous.selectedItems != current.selectedItems;
  }

  void _listener(_, MyoroDropdownV2State<T> state) {
    _onChanged(state);
    _formatSelectedItems(state);
  }

  bool _buildWhen(
    MyoroDropdownV2State<T> previous,
    MyoroDropdownV2State<T> current,
  ) {
    return previous.enabled != current.enabled;
  }

  Widget _builder(_, MyoroDropdownV2State<T> state) {
    return CompositedTransformTarget(
      link: _link,
      child: MyoroInput(
        key: _inputKey,
        configuration: MyoroInputConfiguration(
          label: _configuration.label,
          enabled: state.enabled,
          readOnly: true,
          onCleared: () => _bloc.add(const ClearSelectedItemsEvent()),
          controller: _inputController,
        ),
      ),
    );
  }

  void _onChanged(MyoroDropdownV2State<T> state) {
    final Set<T> selectedItems = state.selectedItems;
    if (_configuration is MyoroSingularDropdownV2Configuration<T>) {
      final configuration =
          _configuration as MyoroSingularDropdownV2Configuration<T>;
      configuration.onChanged?.call(
        selectedItems.isNotEmpty ? selectedItems.first : null,
      );
    }
    if (_configuration is MyoroMultiDropdownV2Configuration<T>) {
      final configuration =
          _configuration as MyoroMultiDropdownV2Configuration<T>;
      configuration.onChanged?.call(selectedItems);
    }
  }

  void _formatSelectedItems(MyoroDropdownV2State<T> state) {
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
  final ValueNotifier<Size?> _inputSizeNotifier;
  final VoidCallback _onTapUp;
  final String _tapRegionGroupId;

  const _InputTriggerArea(
    this._inputSizeNotifier,
    this._onTapUp,
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
            child: BlocBuilder<MyoroDropdownV2Bloc<T>, MyoroDropdownV2State<T>>(
              buildWhen: _buildWhen,
              builder: _builder,
            ),
          ),
        );
      },
    );
  }

  bool _buildWhen(
    MyoroDropdownV2State<T> previous,
    MyoroDropdownV2State<T> current,
  ) {
    return (previous.selectedItems != current.selectedItems) ||
        (previous.enabled || current.enabled);
  }

  Widget _builder(BuildContext context, MyoroDropdownV2State<T> state) {
    final inputThemeExtension =
        context.resolveThemeExtension<MyoroInputThemeExtension>();
    final EdgeInsets clearTextButtonPadding =
        inputThemeExtension.clearTextButtonPadding;

    final onTapUp = state.enabled ? _onTapUp : null;

    return Row(
      children: [
        Expanded(child: _InputTriggerAreaRegion(_tapRegionGroupId, onTapUp)),
        // Allows [MyoroInput._ClearTextButton] to be pressed.
        if (state.selectedItems.isNotEmpty) ...[
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
            child: Container(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T> extends StatelessWidget {
  final MyoroDropdownV2Configuration<T> _configuration;
  final VoidCallback _toggleMenu;
  final String _groupId;

  const _Menu(this._configuration, this._toggleMenu, this._groupId);

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: _groupId,
          onTapOutside: (_) => _toggleMenu(),
          child: MyoroMenu(
            dataConfiguration: _configuration.dataConfiguration,
            itemBuilder: (T item) => _menuItemBuilder(context, item),
          ),
        ),
      ),
    );
  }

  MyoroMenuItem _menuItemBuilder(BuildContext context, T item) {
    return _configuration
        .menuItemBuilder(item)
        .copyWith(
          isHovered: false,
          onPressed: () => _menuItemOnPressed(context, item),
        );
  }

  void _menuItemOnPressed(BuildContext context, T item) {
    final bloc = context.resolveBloc<MyoroDropdownV2Bloc<T>>();
    if (_configuration is MyoroSingularDropdownV2Configuration<T>) {
      bloc.add(const ClearSelectedItemsEvent());
      _toggleMenu();
    }
    bloc.add(ToggleItemEvent(item));
  }
}
