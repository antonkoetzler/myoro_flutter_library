import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_button.dart';

/// Generic button of MFL.
///
/// Used when a very custom button is needed, otherwise MFL
/// provides other buttons that are built with [MyoroButton].
class MyoroButton extends MyoroStatefulWidget<MyoroButtonViewModel> {
  /// Configuration of the [MyoroButton].
  final MyoroButtonConfiguration? configuration;

  /// [Widget] builder of the [MyoroButton].
  final MyoroButtonBuilder builder;

  const MyoroButton({super.key, super.injectedViewModel, this.configuration, required this.builder});

  @override
  State<MyoroButton> createState() => _MyoroButtonState();
}

final class _MyoroButtonState extends State<MyoroButton> {
  MyoroButtonBuilder get _builder => widget.builder;

  MyoroButtonViewModel? _localViewModel;
  MyoroButtonViewModel get _viewModel {
    return widget.injectedViewModel ?? (_localViewModel ??= MyoroButtonViewModel(widget.configuration));
  }

  @override
  void didUpdateWidget(covariant MyoroButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = widget.configuration;
  }

  @override
  void dispose() {
    _localViewModel?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tapStatusController = _viewModel.state.tapStatusController;

    return InheritedProvider.value(
      value: _viewModel,
      child: MouseRegion(
        cursor: _viewModel.cursor,
        onEnter: _viewModel.onEnter,
        onExit: _viewModel.onExit,
        child: GestureDetector(
          onTapDown: _viewModel.onTapDown,
          onTapUp: _viewModel.onTapUp,
          onTapCancel: _viewModel.onTapCancel,
          child: ValueListenableBuilder(
            valueListenable: tapStatusController,
            builder: (_, tapStatusEnum, _) => _Button(tapStatusEnum, _builder),
          ),
        ),
      ),
    );
  }
}
