part of '../myoro_checkbox_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCheckboxWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCheckboxWidgetShowcaseScreenViewModel>();
    final buildConfiguration = viewModel.buildConfiguration;
    final buildThemeExtension = viewModel.buildThemeExtension;

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroCheckbox(configuration: buildConfiguration(context), themeExtension: buildThemeExtension(context));
      },
    );
  }
}
