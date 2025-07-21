part of '../myoro_card_widget_showcase_screen.dart';

/// [MyoroCardConfiguration.constraints] option of [MyoroCardWidgetShowcaseScreen].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseScreenViewModel>();

    return BoxConstraintsWidgetShowcaseOption(
      configuration: BoxConstraintsWidgetShowcaseOptionConfiguration(
        onChanged: (constraints) => viewModel.state.constraints = constraints,
      ),
    );
  }
}
