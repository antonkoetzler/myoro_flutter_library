part of '../myoro_dropdown.dart';

/// [MyoroInput] that displays selected items and provides functionality such as the clear selected items button.
final class _Input<T> extends StatefulWidget {
  final MyoroDropdownController<T> _controller;

  const _Input(this._controller);

  @override
  State<_Input<T>> createState() => _InputState<T>();
}

final class _InputState<T> extends State<_Input<T>> {
  MyoroDropdownController<T> get _controller => widget._controller;
  MyoroDropdownConfiguration<T> get _configuration => _controller._configuration;
  ValueNotifier<bool> get _enabledNotifier => _controller.enabledNotifier;
  TextEditingController get _inputController => _controller._inputController;
  GlobalKey get _inputKey => _controller._state._inputKey;
  ValueNotifier<Size?> get _inputSizeNotifier => _controller._state._inputSizeNotifier;
  LayerLink get _link => _controller._state._link;

  @override
  Widget build(BuildContext context) {
    // TODO
    // return switch (_configuration.menuTypeEnum) {
    return OverlayPortal(
      controller: _controller._overlayPortalController,
      overlayChildBuilder: _overlayChildBuilder,
      child: Stack(
        children: [
          // Empty [MyoroLayoutBuilder] to always update [_inputSizeNotifier].
          MyoroLayoutBuilder(builder: _layoutBuilder),
          _InputTriggerArea<T>(_controller),
        ],
      ),
    );
  }

  Widget _overlayChildBuilder(_) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    return ValueListenableBuilder(
      valueListenable: _inputSizeNotifier,
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
      _inputSizeNotifier.value = renderBox.size;
    });

    return ValueListenableBuilder(valueListenable: _enabledNotifier, builder: _enabledNotifierBuilder);
  }

  Widget _enabledNotifierBuilder(_, bool enabled, __) {
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
