part of '../myoro_button.dart';

/// UI of [MyoroButton].
final class _Button extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroButtonViewModel _viewModel;
  final MyoroButtonBuilder _builder;

  const _Button(this._tapStatusEnum, this._viewModel, this._builder);

  @override
  Widget build(BuildContext context) {
    final child = Container(
      decoration: BoxDecoration(
        color: _getBackgroundColor(context),
        border: _border,
        borderRadius: _getBorderRadius(context),
      ),
      child: _builder(context, _tapStatusEnum),
    );

    if (_configuration?.tooltipConfiguration != null) {
      return MyoroTooltip(configuration: _configuration!.tooltipConfiguration!, child: child);
    }

    return child;
  }

  Color _getBackgroundColor(BuildContext context) {
    final MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder =
        _configuration?.backgroundColorBuilder;
    if (backgroundColorBuilder != null) {
      return backgroundColorBuilder(_tapStatusEnum);
    }
    return MyoroButtonStyleEnum.primary.backgroundColorBuilder(
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

  MyoroButtonConfiguration? get _configuration => _viewModel.state.configuration;
}
