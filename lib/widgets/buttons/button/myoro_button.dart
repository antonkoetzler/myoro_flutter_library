import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_button.dart';

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
  MyoroButtonConfiguration? get _configuration => widget.configuration;

  late final _controller = MyoroButtonController(_configuration);
  ValueNotifier<MyoroTapStatusEnum> get _tapStatusController => _controller.tapStatusController;

  @override
  void didUpdateWidget(covariant MyoroButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.configuration = _configuration;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: _controller.cursor,
      onEnter: _controller.onEnter,
      onExit: _controller.onExit,
      child: GestureDetector(
        onTapDown: _controller.onTapDown,
        onTapUp: _controller.onTapUp,
        onTapCancel: _controller.onTapCancel,
        child: ValueListenableBuilder(valueListenable: _tapStatusController, builder: _builder),
      ),
    );
  }

  Widget _builder(_, MyoroTapStatusEnum tapStatusEnum, _) {
    return _Button(tapStatusEnum, _configuration, widget.builder);
  }
}
