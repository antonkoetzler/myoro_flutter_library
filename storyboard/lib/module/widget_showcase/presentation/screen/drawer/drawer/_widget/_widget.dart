part of '../myoro_drawer_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroDrawerWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseScreenViewModel>();

    return IntrinsicWidth(
      child: MyoroIconTextButton(
        configuration: MyoroIconTextButtonConfiguration(onTapUp: (_) => viewModel.showDrawer(context)),
      ),
    );
  }
}
