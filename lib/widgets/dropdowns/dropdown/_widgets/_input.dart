part of '../myoro_dropdown.dart';

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T, C extends _C<T>> extends StatefulWidget {
  final MyoroDropdownViewModel<T, C> _viewModel;

  const _Input(this._viewModel);

  @override
  State<_Input<T, C>> createState() => _InputState<T, C>();
}

final class _InputState<T, C extends _C<T>> extends State<_Input<T, C>> {
  MyoroDropdownViewModel<T, C> get _viewModel => widget._viewModel;
  MyoroDropdownConfiguration<T> get _configuration => _viewModel.state.configuration;
  ValueNotifier<bool> get _enabledController => _viewModel.controller.state.enabledController;
  TextEditingController get _inputController => _viewModel.state.inputController;
  GlobalKey get _inputKey => _viewModel.state.inputKey;
  ValueNotifier<Size?> get _inputSizeController => _viewModel.state.inputSizeController;
  LayerLink get _link => _viewModel.state.link;

  @override
  Widget build(BuildContext context) {
    // TODO
    // return switch (_configuration.menuTypeEnum) {
    return OverlayPortal(
      controller: _viewModel.state.overlayPortalController,
      overlayChildBuilder: _overlayChildBuilder,
      child: Stack(
        children: [
          // Empty [MyoroLayoutBuilder] to always update [_inputSizeController].
          MyoroLayoutBuilder(builder: _layoutBuilder),
          _InputTriggerArea(_viewModel),
        ],
      ),
    );
  }

  Widget _overlayChildBuilder(_) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    return ValueListenableBuilder(
      valueListenable: _inputSizeController,
      builder: (_, Size? inputSize, _) {
        return Positioned(
          width: inputSize?.width,
          child: CompositedTransformFollower(
            link: _link,
            offset: Offset(0, (inputSize?.height ?? 0) + themeExtension.spacing),
            child: _Menu(_viewModel),
          ),
        );
      },
    );
  }

  Widget _layoutBuilder(_, __) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderBox = _inputKey.currentContext!.findRenderObject() as RenderBox;
      _inputSizeController.value = renderBox.size;
    });

    return ValueListenableBuilder(valueListenable: _enabledController, builder: _enabledControllerBuilder);
  }

  Widget _enabledControllerBuilder(_, bool enabled, __) {
    return CompositedTransformTarget(
      link: _link,
      child: MyoroInput(
        key: _inputKey,
        configuration: MyoroInputConfiguration(
          textAlign: _configuration.selectedItemTextAlign,
          label: _configuration.label.isNotEmpty ? _configuration.label : null,
          enabled: enabled,
          readOnly: true,
          showClearTextButton: _configuration.allowItemClearing,
          onCleared: _viewModel.controller.clear,
          controller: _inputController,
        ),
      ),
    );
  }
}
