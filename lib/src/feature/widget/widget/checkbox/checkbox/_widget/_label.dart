part of '../widget/myoro_checkbox.dart';

/// Label of [MyoroCheckbox].
final class _Label extends StatelessWidget {
  const _Label();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final style = context.watch<MyoroCheckboxStyle>();
    final labelTextStyle = style.labelTextStyle ?? themeExtension.labelTextStyle;
    final disabledColor = style.disabledColor ?? themeExtension.disabledColor;

    final viewModel = context.read<MyoroCheckboxViewModel>();
    final state = viewModel.state;
    final enabled = state.enabled;
    final label = state.label;

    return Text(
      label,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: enabled && disabledColor != null ? labelTextStyle : labelTextStyle?.withColor(disabledColor!),
    );
  }
}
