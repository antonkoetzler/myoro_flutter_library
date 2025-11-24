part of '../widget/myoro_field.dart';

/// Data of [MyoroField].
final class _Data extends StatelessWidget {
  /// Default constructor.
  const _Data();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();
    final dataTextStyle = style.dataTextStyle ?? themeExtension.dataTextStyle;

    final viewModel = context.watch<MyoroFieldViewModel>();
    final state = viewModel.state;
    final data = state.data;

    return MyoroText(data, style: dataTextStyle);
  }
}
