part of '../myoro_checkbox.dart';

/// Label of [MyoroCheckbox].
final class _Label extends StatelessWidget {
  const _Label();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCheckboxThemeExtension>();
    final labelTextStyle = themeExtension.labelTextStyle;

    final viewModel = context.read<MyoroCheckboxViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final label = configuration.label;

    return Text(label, maxLines: 1, overflow: TextOverflow.ellipsis, style: labelTextStyle);
  }
}
