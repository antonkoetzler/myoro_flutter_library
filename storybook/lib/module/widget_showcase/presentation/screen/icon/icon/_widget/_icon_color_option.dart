part of '../myoro_icon_widget_showcase_screen.dart';

/// [MyoroIconStyle.color] option of [MyoroIconWidgetShowcaseScreen].
final class _IconColorOption extends StatelessWidget {
  const _IconColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroIconWidgetShowcaseScreenViewModel>();

    return ColorWidgetShowcaseOption(
      label: localization.storybookWidgetShowcaseOptionIconColorLabel,
      selectedColor: viewModel.state.color,
      onChanged: (color) => viewModel.state.color = color,
    );
  }
}
