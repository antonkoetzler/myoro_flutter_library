part of '../myoro_input.dart';

/// Label [Widget] of [MyoroInput].
final class _Label extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _Label(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return Padding(
      padding: const EdgeInsets.only(
        // Needed to center the text of the label.
        bottom: 5,
      ),
      child: Text(
        _viewModel.state.configuration.label,
        style: _viewModel.state.configuration.labelTextStyle ?? themeExtension.labelTextStyle,
      ),
    );
  }
}
