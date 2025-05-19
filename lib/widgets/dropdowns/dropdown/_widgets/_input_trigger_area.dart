part of '../myoro_dropdown.dart';

/// [Widget] responsible for opening the dropdown when [_Input] is pressed.
final class _InputTriggerArea<T> extends StatelessWidget {
  final MyoroDropdownController<T> _controller;
  MyoroDropdownConfiguration<T> get _configuration => _controller._configuration;
  ValueNotifier<bool> get _enabledNotifier => _controller.enabledNotifier;
  bool get _enabled => _controller.enabled;
  ValueNotifier<Set<T>> get _selectedItemsNotifier => _controller.selectedItemsNotifier;
  Set<T> get _selectedItems => _selectedItemsNotifier.value;
  String get _tapRegionGroupId => _controller._state._tapRegionGroupId;
  ValueNotifier<Size?> get _inputSizeNotifier => _controller._state._inputSizeNotifier;

  const _InputTriggerArea(this._controller);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: _inputSizeNotifier, builder: _inputSizeNotifierBuilder);
  }

  Widget _inputSizeNotifierBuilder(BuildContext context, Size? inputSize, __) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return ClipRRect(
      borderRadius: inputThemeExtension.borderRadius,
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: inputSize?.height,
        child: ValueListenableBuilder(valueListenable: _enabledNotifier, builder: _enabledNotifierBuilder),
      ),
    );
  }

  Widget _enabledNotifierBuilder(BuildContext context, bool enabled, _) {
    return ValueListenableBuilder(
      valueListenable: _selectedItemsNotifier,
      builder: (_, __, ___) => _selectedItemsNotifierBuilder(context),
    );
  }

  Widget _selectedItemsNotifierBuilder(BuildContext context) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final EdgeInsets clearTextButtonPadding = inputThemeExtension.clearTextButtonPadding;
    final onTapUp = _enabled ? _controller.toggleMenu : null;

    return Row(
      children: [
        Expanded(child: _InputTriggerAreaRegion(_tapRegionGroupId, onTapUp)),
        // Allows [MyoroInput._ClearTextButton] to be pressed.
        if (_configuration.allowItemClearing && _selectedItems.isNotEmpty) ...[
          SizedBox(
            width: 29,
            child: Column(
              children: [
                _InputTriggerAreaRegion(_tapRegionGroupId, onTapUp, height: clearTextButtonPadding.top + 2),
                const Spacer(),
                _InputTriggerAreaRegion(_tapRegionGroupId, onTapUp, height: clearTextButtonPadding.bottom + 2),
              ],
            ),
          ),
          _InputTriggerAreaRegion(_tapRegionGroupId, onTapUp, width: clearTextButtonPadding.right),
        ],
      ],
    );
  }
}
