import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widgets/_button.dart';
part 'controller/myoro_button_controller.dart';
part 'controller/myoro_button_controller_impl.dart';
part 'enums/myoro_button_variant_enum.dart';
part 'models/myoro_button_configuration.dart';
part 'myoro_button_theme_extension.dart';
part 'myoro_button_types.dart';

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

  final _controller = MyoroButtonControllerImpl();
  ValueNotifier<MyoroTapStatusEnum> get _tapStatusNotifier => _controller._tapStatusNotifier;

  @override
  void initState() {
    super.initState();
    _controller._configuration = _configuration;
  }

  @override
  void didUpdateWidget(covariant MyoroButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller._configuration = _configuration;
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
        child: ValueListenableBuilder(valueListenable: _tapStatusNotifier, builder: _builder),
      ),
    );
  }

  Widget _builder(_, MyoroTapStatusEnum tapStatusEnum, _) {
    return _Button(tapStatusEnum, _configuration, widget.builder);
  }
}
