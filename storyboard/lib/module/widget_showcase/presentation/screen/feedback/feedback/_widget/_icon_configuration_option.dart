part of '../myoro_feedback_widget_showcase_screen.dart';

/// [MyoroFeedbackConfiguration.iconConfiguration] option of [MyoroFeedbackWidgetShowcaseScreen].
final class _IconConfigurationOption extends StatelessWidget {
  const _IconConfigurationOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFeedbackWidgetShowcaseScreenViewModel>();

    return IconWidgetShowcaseOption(
      configuration: IconWidgetShowcaseOptionConfiguration(
        initiallySelectedIcon: viewModel.state.iconConfiguration.icon,
        initiallySelectedIconSize: viewModel.state.iconConfiguration.size,
        iconOnChanged: viewModel.iconConfigurationIconOnChanged,
        iconSizeOnChanged: viewModel.iconConfigurationSizeOnChanged,
        iconSizeCheckboxOnChanged: viewModel.iconConfigurationSizeCheckboxOnChanged,
      ),
    );
  }
}
