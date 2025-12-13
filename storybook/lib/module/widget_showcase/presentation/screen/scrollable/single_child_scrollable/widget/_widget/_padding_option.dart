part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroScrollableStyle.padding] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _PaddingOption extends StatelessWidget {
  const _PaddingOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();

    return PaddingWidgetShowcaseOption(
      configuration: PaddingWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionScrollablePaddingLabel,
        paddingOnChanged: (padding) => viewModel.state.padding = padding,
      ),
    );
  }
}
