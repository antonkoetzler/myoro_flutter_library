part of '../myoro_card_widget_showcase.dart';

/// [MyoroCardConfiguration.constraints] option of [MyoroCardWidgetShowcase].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCardWidgetShowcaseViewModel>();

    return BoxConstraintsWidgetShowcaseOption(
      configuration: BoxConstraintsWidgetShowcaseOptionConfiguration(onChanged: (constraints) => viewModel.constraints = constraints),
    );
  }
}
