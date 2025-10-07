part of '../myoro_input.dart';

/// Label [Widget] of [MyoroInput].
final class _Label extends StatelessWidget {
  const _Label();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.watch<MyoroInputStyle>();
    final labelTextStyle = style.labelTextStyle ?? themeExtension.labelTextStyle;

    final viewModel = context.read<MyoroInputViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final label = configuration.label;

    return Text(label, style: labelTextStyle);
  }
}
