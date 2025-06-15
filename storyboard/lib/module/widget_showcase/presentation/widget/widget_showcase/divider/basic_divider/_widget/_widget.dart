part of '../myoro_basic_divider_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroBasicDividerWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroBasicDividerWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroBasicDivider(
          configuration: MyoroBasicDividerConfiguration(
            direction: viewModel.direction,
            shortValue: viewModel.shortValue,
            padding: viewModel.padding,
          ),
        );
      },
    );
  }
}
