part of '../widget/myoro_field.dart';

/// Data of [MyoroField].
final class _Data extends StatelessWidget {
  /// Default constructor.
  const _Data();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();

    final viewModel = context.watch<MyoroFieldViewModel>();
    final state = viewModel.state;
    final data = state.data;
    final dataConfiguration = state.dataConfiguration;
    final dataTextStyle = dataConfiguration?.style ?? style.dataTextStyle ?? themeExtension.dataTextStyle;
    final maxLines = dataConfiguration?.maxLines;
    final overflow = dataConfiguration?.overflow;
    final alignment = dataConfiguration?.alignment;

    return Text(data, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: dataTextStyle);
  }
}
