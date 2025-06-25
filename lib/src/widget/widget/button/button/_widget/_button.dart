part of '../myoro_button.dart';

/// UI of [MyoroButton].
final class _Button extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroButtonBuilder _builder;

  const _Button(this._tapStatusEnum, this._builder);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonViewModel>();
    final configuration = viewModel.state.configuration;

    final child = Container(
      decoration: BoxDecoration(
        color: _getBackgroundColor(context, configuration),
        border: _border(configuration),
        borderRadius: _getBorderRadius(context, configuration),
      ),
      child: _builder(context, _tapStatusEnum),
    );

    if (configuration?.tooltipConfiguration != null) {
      return MyoroTooltip(configuration: configuration!.tooltipConfiguration!, child: child);
    }

    return child;
  }

  Color _getBackgroundColor(BuildContext context, MyoroButtonConfiguration? configuration) {
    final MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder =
        configuration?.backgroundColorBuilder;
    if (backgroundColorBuilder != null) {
      return backgroundColorBuilder(_tapStatusEnum);
    }
    return MyoroButtonStyleEnum.primary.backgroundColorBuilder(
      context,
      _tapStatusEnum,
      onTapProvided: configuration?.onTapProvided == true,
    );
  }

  BorderRadius _getBorderRadius(BuildContext context, MyoroButtonConfiguration? configuration) {
    final buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
    return configuration?.borderRadius ?? buttonThemeExtension.borderRadius;
  }

  BoxBorder? _border(MyoroButtonConfiguration? configuration) {
    return configuration?.borderBuilder?.call(_tapStatusEnum);
  }
}
