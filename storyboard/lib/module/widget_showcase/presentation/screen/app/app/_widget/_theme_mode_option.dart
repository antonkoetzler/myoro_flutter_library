part of '../myoro_app_widget_showcase_screen.dart';

/// [MyoroAppConfiguration.themeMode] option.
final class _ThemeModeOption extends StatelessWidget {
  const _ThemeModeOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAppWidgetShowcaseScreenViewModel>();

    return ThemeModeWidgetShowcaseOption(onChanged: (themeMode) => viewModel.state.themeMode = themeMode!);
  }
}
