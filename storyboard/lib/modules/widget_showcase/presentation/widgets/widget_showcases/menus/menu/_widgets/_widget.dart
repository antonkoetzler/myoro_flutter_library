part of '../myoro_menu_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroMenuWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroMenu<String>(configuration: viewModel.configuration);
      },
    );
  }
}
