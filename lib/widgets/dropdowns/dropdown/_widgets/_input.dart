part of '../myoro_dropdown.dart';

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T, C extends MyoroDropdownConfiguration<T>> extends StatefulWidget {
  final MyoroDropdownController<T, C> _controller;

  const _Input(this._controller);

  @override
  State<_Input<T, C>> createState() => _InputState<T, C>();
}

final class _InputState<T, C extends MyoroDropdownConfiguration<T>> extends State<_Input<T, C>> {
  MyoroDropdownController<T, C> get _controller => widget._controller;
  MyoroDropdownConfiguration<T> get _configuration => _controller.state.configuration;
  ValueNotifier<bool> get _enabledController => _controller.state.enabledController;
  TextEditingController get _inputController => _controller.state.inputController;
  GlobalKey get _inputKey => _controller.state.inputKey;
  ValueNotifier<Size?> get _inputSizeController => _controller.state.inputSizeController;
  LayerLink get _link => _controller.state.link;

  @override
  Widget build(BuildContext context) {
    // TODO
    // return switch (_configuration.menuTypeEnum) {
    return OverlayPortal(
      controller: _controller.state.overlayPortalController,
      overlayChildBuilder: _overlayChildBuilder,
      child: Stack(
        children: [
          // Empty [MyoroLayoutBuilder] to always update [_inputSizeController].
          MyoroLayoutBuilder(builder: _layoutBuilder),
          _InputTriggerArea(_controller),
        ],
      ),
    );
  }

  Widget _overlayChildBuilder(_) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    return ValueListenableBuilder(
      valueListenable: _inputSizeController,
      builder: (_, Size? inputSize, __) {
        return Positioned(
          width: inputSize?.width,
          child: CompositedTransformFollower(
            link: _link,
            offset: Offset(0, (inputSize?.height ?? 0) + themeExtension.spacing),
            child: _Menu(_controller),
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
          onCleared: _controller.clearSelectedItems,
          controller: _inputController,
        ),
      ),
    );
  }
}
