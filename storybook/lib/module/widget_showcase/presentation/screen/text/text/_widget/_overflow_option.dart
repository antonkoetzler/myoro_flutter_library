part of '../myoro_text_widget_showcase_screen.dart';

/// [MyoroTextStyle.overflow] option of [MyoroTextWidgetShowcaseScreen].
final class _OverflowOption extends StatelessWidget {
  const _OverflowOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTextWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return TextOverflowWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionTextOverflowLabel,
      selectedItem: state.overflow ?? MyoroTextStyle.overflowDefaultValue,
      onChanged: (overflow) => state.overflow = overflow,
    );
  }
}
