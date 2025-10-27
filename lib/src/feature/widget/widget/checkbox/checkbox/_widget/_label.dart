part of '../widget/myoro_checkbox.dart';

/// Label of [MyoroCheckbox].
final class _Label extends StatelessWidget {
  const _Label();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final style = context.watch<MyoroCheckboxStyle>();
    final labelTextStyle = style.labelTextStyle ?? themeExtension.labelTextStyle;

    final viewModel = context.read<MyoroCheckboxViewModel>();
    final state = viewModel.state;
    final label = state.label;

    return Text(label, maxLines: 1, overflow: TextOverflow.ellipsis, style: labelTextStyle);
  }
}
