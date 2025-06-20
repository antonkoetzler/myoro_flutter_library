part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.constraints] option of [MyoroMenuWidgetShowcaseScreen].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();

    return BoxConstraintsWidgetShowcaseOption(
      configuration: BoxConstraintsWidgetShowcaseOptionConfiguration(
        onChanged: (constraints) => viewModel.state.constraints = constraints,
      ),
    );
  }
}
