part of '../myoro_checkbox.dart';

/// [Checkbox] of [MyoroCheckbox].
final class _Checkbox extends StatelessWidget {
  const _Checkbox();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final checkboxActiveColor = themeExtension.checkboxActiveColor;
    final checkboxCheckColor = themeExtension.checkboxCheckColor;
    final checkboxHoverColor = themeExtension.checkboxHoverColor;
    final checkboxFocusColor = themeExtension.checkboxFocusColor;
    final checkboxSplashRadius = themeExtension.checkboxSplashRadius;

    final viewModel = context.read<MyoroCheckboxViewModel>();
    final state = viewModel.state;
    final enabledNotifier = state.enabledNotifier;
    final onTapUp = viewModel.onTapUp;

    return ValueListenableBuilder(
      valueListenable: enabledNotifier,
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
