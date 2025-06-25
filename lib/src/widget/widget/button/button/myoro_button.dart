import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_button.dart';

/// Generic button of MFL.
///
/// Used when a very custom button is needed, otherwise MFL
/// provides other buttons that are built with [MyoroButton].
class MyoroButton extends StatefulWidget {
  /// Configuration of the [MyoroButton].
  final MyoroButtonConfiguration? configuration;

  /// [Widget] builder of the [MyoroButton].
  final MyoroButtonBuilder builder;

  const MyoroButton({super.key, this.configuration, required this.builder});

  @override
  State<MyoroButton> createState() => _MyoroButtonState();
}

final class _MyoroButtonState extends State<MyoroButton> {
  MyoroButtonBuilder get _builder => widget.builder;

  late final _viewModel = MyoroButtonViewModel()..state.configuration = widget.configuration;
  ValueNotifier<MyoroTapStatusEnum> get _tapStatusController => _viewModel.state.tapStatusController;

  @override
  void didUpdateWidget(covariant MyoroButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel.state.configuration = widget.configuration;
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            valueListenable: _tapStatusController,
            builder: (_, tapStatusEnum, _) => _Button(tapStatusEnum, _builder),
          ),
        ),
      ),
    );
  }
}
