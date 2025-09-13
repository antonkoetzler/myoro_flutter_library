part of '../myoro_button.dart';

/// UI of [MyoroButton].
final class _Button extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroButtonBuilder _builder;

  const _Button(this._tapStatusEnum, this._builder);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
    final borderBuilder = themeExtension.borderBuilder;
    final borderRadius = themeExtension.borderRadius;
    final backgroundColorBuilder = themeExtension.backgroundColorBuilder;

    final viewModel = context.read<MyoroButtonViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;

    final child = DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColorBuilder(_tapStatusEnum),
        border: borderBuilder.call(_tapStatusEnum),
        borderRadius: borderRadius,
      ),
      child: ClipRRect(
        borderRadius: borderRadius != null
            ? BorderRadius.only(
                topLeft: Radius.circular((borderRadius.topLeft.x - 2).clamp(0.0, double.infinity)),
                topRight: Radius.circular((borderRadius.topRight.x - 2).clamp(0.0, double.infinity)),
                bottomLeft: Radius.circular((borderRadius.bottomLeft.x - 2).clamp(0.0, double.infinity)),
                bottomRight: Radius.circular((borderRadius.bottomRight.x - 2).clamp(0.0, double.infinity)),
              )
            : BorderRadius.zero,
        child: _builder(context, _tapStatusEnum),
      ),
    );

    return configuration?.tooltipConfiguration != null
        ? MyoroTooltip(configuration: configuration!.tooltipConfiguration!, child: child)
        : child;
  }
}
