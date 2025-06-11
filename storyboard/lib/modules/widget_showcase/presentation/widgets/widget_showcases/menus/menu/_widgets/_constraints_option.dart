part of '../myoro_menu_widget_showcase.dart';

/// [MyoroMenuConfiguration.constraints] option of [MyoroMenuWidgetShowcase].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseViewModel>();

    return BoxConstraintsWidgetShowcaseOption(
      configuration: BoxConstraintsWidgetShowcaseOptionConfiguration(
        onChanged: (constraints) => viewModel.state.constraints = constraints,
      ),
    );
  }
}
