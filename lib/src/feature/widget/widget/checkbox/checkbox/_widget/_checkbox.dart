part of '../myoro_checkbox.dart';

/// [Checkbox] of [MyoroCheckbox].
final class _Checkbox extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final style = context.watch<MyoroCheckboxStyle>();
    final checkboxActiveColor = style.checkboxActiveColor ?? themeExtension.checkboxActiveColor;
    final checkboxCheckColor = style.checkboxCheckColor ?? themeExtension.checkboxCheckColor;
    final checkboxHoverColor = style.checkboxHoverColor ?? themeExtension.checkboxHoverColor;
    final checkboxFocusColor = style.checkboxFocusColor ?? themeExtension.checkboxFocusColor;
    final checkboxSplashRadius = style.checkboxSplashRadius ?? themeExtension.checkboxSplashRadius;

    final viewModel = context.read<MyoroCheckboxViewModel>();
    final state = viewModel.state;
    final enabledController = state.enabledController;
    final onTapUp = viewModel.onTapUp;

    return ValueListenableBuilder(
      valueListenable: enabledController,
      builder: (_, bool enabled, _) {
        // This [SizedBox] removes the default margin in [Checkbox].
        return SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: enabled,
            activeColor: checkboxActiveColor,
            checkColor: checkboxCheckColor,
            hoverColor: checkboxHoverColor,
            focusColor: checkboxFocusColor,
            splashRadius: checkboxSplashRadius,
            onChanged: onTapUp,
          ),
        );
      },
    );
  }
}
