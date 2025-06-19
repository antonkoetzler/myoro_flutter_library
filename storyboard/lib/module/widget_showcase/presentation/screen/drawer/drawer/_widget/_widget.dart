part of '../myoro_drawer_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDrawerWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseViewModel>();

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(
          buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => viewModel.showDrawer(context)),
        ),
      ),
    );
  }
}
