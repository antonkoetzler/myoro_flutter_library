part of '../myoro_modal_widget_showcase.dart';

/// [MyoroModalConfiguration.constraints] option of [MyoroModalWidgetShowcase].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return BoxConstraintsWidgetShowcaseOption(
      configuration: BoxConstraintsWidgetShowcaseOptionConfiguration(
        onChanged: (constraints) => viewModel.state.constraints = constraints,
      ),
    );
  }
}
