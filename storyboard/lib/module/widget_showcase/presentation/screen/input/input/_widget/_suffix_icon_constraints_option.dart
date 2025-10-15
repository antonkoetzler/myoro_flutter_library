part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputThemeExtension.suffixIconConstraints] option of [MyoroInputWidgetShowcaseScreen].
final class _SuffixIconConstraintsOption extends StatelessWidget {
  const _SuffixIconConstraintsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return BoxConstraintsWidgetShowcaseOption(
      label: 'Suffix icon constraints',
      onChanged: (constraints) => viewModel.state.suffixIconConstraints = constraints,
    );
  }
}
