import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] builder of the [MyoroButton].
typedef MyoroButtonBuilder =
    Widget Function(BuildContext context, MyoroTapStatusEnum tapStatusEnum);

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

  MouseCursor get _cursor =>
      widget.configuration?.cursor ??
      (widget.configuration?.onTapProvided == true
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic);

  /// [ValueNotifier] managing the [MyoroTapStatusEnum] of the [MyoroButton].
  final _tapStatusNotifier = ValueNotifier(MyoroTapStatusEnum.idle);

  @override
  void dispose() {
    _tapStatusNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: _cursor,
      onEnter: _onEnter,
      onExit: _onExit,
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: ValueListenableBuilder(valueListenable: _tapStatusNotifier, builder: _builder),
      ),
    );
  }

  void _onEnter(_) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.hover;
  }

  void _onExit(_) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.idle;
  }

  void _onTapDown(TapDownDetails details) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.tap;
    _configuration?.onTapDown?.call(details);
  }

  void _onTapUp(TapUpDetails details) {
    _tapStatusNotifier.value = MyoroTapStatusEnum.idle;
    _configuration?.onTapUp?.call(details);
  }

  void _onTapCancel() {
    _tapStatusNotifier.value = MyoroTapStatusEnum.idle;
  }

  Widget _builder(_, MyoroTapStatusEnum tapStatusEnum, _) {
    return _Button(tapStatusEnum, _configuration, widget.builder);
  }
}

final class _Button extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroButtonConfiguration? _configuration;
  final MyoroButtonBuilder _builder;

  const _Button(this._tapStatusEnum, this._configuration, this._builder);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _getBackgroundColor(context),
        border: _border,
        borderRadius: _getBorderRadius(context),
      ),
      child: _builder(context, _tapStatusEnum),
    );
  }

  Color _getBackgroundColor(BuildContext context) {
    final MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder =
        _configuration?.backgroundColorBuilder;
    if (backgroundColorBuilder != null) {
      return backgroundColorBuilder(_tapStatusEnum);
    }
    return MyoroButtonVariantEnum.primary.backgroundColorBuilder(
      context,
      _tapStatusEnum,
      onTapProvided: _configuration?.onTapProvided == true,
    );
  }

  BorderRadius _getBorderRadius(BuildContext context) {
    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
    return _configuration?.borderRadius ?? buttonThemeExtension.borderRadius;
  }

  BoxBorder? get _border {
    return _configuration?.borderBuilder?.call(_tapStatusEnum);
  }
}
