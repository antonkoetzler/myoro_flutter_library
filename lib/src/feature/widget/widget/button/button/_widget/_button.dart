part of '../myoro_button.dart';

/// UI of [MyoroButton].
final class _Button extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroButtonBuilder _builder;

  const _Button(this._tapStatusEnum, this._builder);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
    final style = context.watch<MyoroButtonStyle>();
    final border = style.borderBuilder(_tapStatusEnum) ?? themeExtension.borderBuilder(_tapStatusEnum);
    final borderRadius = style.borderRadius ?? themeExtension.borderRadius;
    final backgroundColor =
        style.backgroundColorBuilder(_tapStatusEnum) ?? themeExtension.backgroundColorBuilder(_tapStatusEnum);
    final borderWidth = style.borderWidth ?? themeExtension.borderWidth;

    final viewModel = context.read<MyoroButtonViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;

    final child = DecoratedBox(
      decoration: BoxDecoration(color: backgroundColor, border: border, borderRadius: borderRadius),
      child: Padding(
        padding: EdgeInsets.all(borderWidth ?? 0),
        child: ClipRRect(
          borderRadius: borderRadius != null
              ? BorderRadius.only(
                  topLeft: Radius.circular((borderRadius.topLeft.x - (borderWidth ?? 0)).clamp(0.0, double.infinity)),
                  topRight: Radius.circular((borderRadius.topRight.x - (borderWidth ?? 0)).clamp(0.0, double.infinity)),
                  bottomLeft: Radius.circular(
                    (borderRadius.bottomLeft.x - (borderWidth ?? 0)).clamp(0.0, double.infinity),
                  ),
                  bottomRight: Radius.circular(
                    (borderRadius.bottomRight.x - (borderWidth ?? 0)).clamp(0.0, double.infinity),
                  ),
                )
              : BorderRadius.zero,
          child: _builder(context, _tapStatusEnum),
        ),
      ),
    );

    return configuration?.tooltipConfiguration != null
        ? MyoroTooltip(configuration: configuration!.tooltipConfiguration!, child: child)
        : child;
  }
}
