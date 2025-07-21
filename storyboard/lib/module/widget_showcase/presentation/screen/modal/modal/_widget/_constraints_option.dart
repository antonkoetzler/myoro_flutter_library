part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.constraints] option of [MyoroModalWidgetShowcaseScreen].
final class _ConstraintsOption extends StatelessWidget {
  const _ConstraintsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();

    return BoxConstraintsWidgetShowcaseOption(
      configuration: BoxConstraintsWidgetShowcaseOptionConfiguration(
        onChanged: (constraints) => viewModel.state.constraints = constraints,
      ),
    );
  }
}
