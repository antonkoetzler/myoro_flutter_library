part of '../widget/myoro_field.dart';

/// Label of [MyoroField].
final class _Label extends StatelessWidget {
  /// Default constructor.
  const _Label();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();

    final viewModel = context.watch<MyoroFieldViewModel>();
    final state = viewModel.state;
    final label = state.label;
    final labelConfiguration = state.labelConfiguration;
    final labelTextStyle = labelConfiguration?.style ?? style.labelTextStyle ?? themeExtension.labelTextStyle;
    final maxLines = labelConfiguration?.maxLines;
    final overflow = labelConfiguration?.overflow;
    final alignment = labelConfiguration?.alignment;

    return Text(label, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: labelTextStyle);
  }
}
