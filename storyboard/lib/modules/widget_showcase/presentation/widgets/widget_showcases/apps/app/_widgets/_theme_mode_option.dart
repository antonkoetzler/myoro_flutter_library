part of '../myoro_app_widget_showcase.dart';

/// [MyoroAppConfiguration.themeMode] option.
final class _ThemeModeOption extends StatelessWidget {
  const _ThemeModeOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroAppWidgetShowcaseViewModel>();

    return ThemeModeWidgetShowcaseOption(onChanged: (themeMode) => viewModel.themeMode = themeMode!);
  }
}
