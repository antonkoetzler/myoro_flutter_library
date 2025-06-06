part of '../myoro_dropdown.dart';

/// [Widget] responsible for opening the dropdown when [_Input] is pressed.
final class _InputTriggerArea<T, C extends _C<T>> extends StatelessWidget {
  final MyoroDropdownViewModel<T, C> _viewModel;
  MyoroDropdownConfiguration<T> get _configuration => _viewModel.state.configuration;
  ValueNotifier<bool> get _enabledController => _viewModel.controller.state.enabledController;
  bool get _enabled => _viewModel.controller.state.enabled;
  ValueNotifier<Set<T>> get _selectedItemsController => _viewModel.controller.state.selectedItemsController;
  Set<T> get _selectedItems => _selectedItemsController.value;
  String get _tapRegionGroupId => _viewModel.state.tapRegionGroupId;
  ValueNotifier<Size?> get _inputSizeController => _viewModel.state.inputSizeController;

  const _InputTriggerArea(this._viewModel);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: _inputSizeController, builder: _inputSizeControllerBuilder);
  }

  Widget _inputSizeControllerBuilder(BuildContext context, Size? inputSize, _) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return ClipRRect(
      borderRadius: inputThemeExtension.borderRadius,
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: inputSize?.height,
        child: ValueListenableBuilder(valueListenable: _enabledController, builder: _enabledControllerBuilder),
      ),
    );
  }

  Widget _enabledControllerBuilder(BuildContext context, bool enabled, _) {
    return ValueListenableBuilder(
      valueListenable: _selectedItemsController,
      builder: (_, _, _) => _selectedItemsControllerBuilder(context),
    );
  }

  Widget _selectedItemsControllerBuilder(BuildContext context) {
    final inputThemeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final EdgeInsets clearTextButtonPadding = inputThemeExtension.clearTextButtonPadding;
    final onTapUp = _enabled ? _viewModel.toggleMenu : null;

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
