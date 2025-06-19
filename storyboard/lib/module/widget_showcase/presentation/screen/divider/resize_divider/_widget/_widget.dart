part of '../myoro_resize_divider_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroResizeDividerWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final basicDividerViewModel = context.read<MyoroBasicDividerWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: basicDividerViewModel,
      builder: (_, __) {
        return MyoroResizeDivider(
          configuration: MyoroResizeDividerConfiguration(
            basicDividerConfiguration: MyoroBasicDividerConfiguration(
              direction: basicDividerViewModel.direction,
              shortValue: basicDividerViewModel.shortValue,
              padding: basicDividerViewModel.padding,
            ),
          ),
        );
      },
    );
  }
}
