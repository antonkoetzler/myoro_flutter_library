part of '../myoro_button_widget_showcase_screen.dart';

/// [Widget] of [MyoroButtonWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();
    final buildConfiguration = viewModel.buildConfiguration;
    final buildThemeExtension = viewModel.buildThemeExtension;

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, _) {
        return MyoroButton(
          configuration: buildConfiguration(context),
          themeExtension: buildThemeExtension(context),
          builder: (_, tapStatusEnum) => _ButtonContent(tapStatusEnum),
        );
      },
    );
  }
}
