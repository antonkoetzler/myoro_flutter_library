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

  /// Theme extension.
  final MyoroButtonStyle style;

  /// [Widget] builder of the [MyoroButton].
  final MyoroButtonBuilder builder;

  const MyoroButton({super.key, this.configuration, this.style = const MyoroButtonStyle(), required this.builder});

  @override
  State<MyoroButton> createState() => _MyoroButtonState();
}

final class _MyoroButtonState extends State<MyoroButton> {
  MyoroButtonConfiguration? get _configuration => widget.configuration;
  MyoroButtonStyle get _style => widget.style;
  MyoroButtonBuilder get _builder => widget.builder;

  late final MyoroButtonViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = MyoroButtonViewModel(_configuration);
  }

  @override
  void didUpdateWidget(covariant MyoroButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    final state = _viewModel.state;
    if (mounted && _configuration != oldWidget.configuration) {
      state.configuration = _configuration;
      setState(() {});
    }
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    final state = _viewModel.state;
    final tapStatusNotifier = state.tapStatusNotifier;
    final onEnter = _viewModel.onEnter;
    final onExit = _viewModel.onExit;
    final onTapDown = _viewModel.onTapDown;
    final onTapUp = _viewModel.onTapUp;
    final onTapCancel = _viewModel.onTapCancel;
    final configuration = state.configuration;
    final onTapProvided = configuration?.onTapProvided == true;

    final cursor = configuration?.cursor ?? (onTapProvided ? SystemMouseCursors.click : SystemMouseCursors.basic);

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: _style),
      ],
      child: MouseRegion(
        cursor: cursor,
        onEnter: onEnter,
        onExit: onExit,
        child: GestureDetector(
          onTapDown: onTapDown,
          onTapUp: onTapUp,
          onTapCancel: onTapCancel,
          child: ValueListenableBuilder(
            valueListenable: tapStatusNotifier,
            builder: (_, tapStatusEnum, _) => _Button(tapStatusEnum, _builder),
          ),
        ),
      ),
    );
  }
}
