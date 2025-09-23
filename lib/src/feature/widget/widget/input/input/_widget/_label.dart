part of '../myoro_input.dart';

/// Label [Widget] of [MyoroInput].
final class _Label extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _Label(this._viewModel);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final labelTextStyle = themeExtension.labelTextStyle;

    return Padding(
      padding: const EdgeInsets.only(
        // Needed to center the text of the label.
        bottom: 5,
      ),
      child: Text(_viewModel.state.configuration.label, style: labelTextStyle),
    );
  }
}
