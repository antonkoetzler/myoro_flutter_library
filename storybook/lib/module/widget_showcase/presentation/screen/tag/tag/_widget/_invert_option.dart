part of '../myoro_tag_widget_showcase_screen.dart';

/// [MyoroTag.invert] option of [MyoroTagWidgetShowcaseScreen].
final class _InvertOption extends StatelessWidget {
  const _InvertOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTagWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final invert = state.invert;
    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionTagInvertLabel,
      value: invert,
      onChanged: (value) => state.invert = value,
    );
  }
}
