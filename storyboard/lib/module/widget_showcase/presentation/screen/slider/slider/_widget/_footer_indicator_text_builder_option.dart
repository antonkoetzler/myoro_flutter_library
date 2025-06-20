part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.footerIndicatorTextBuilder] option of [MyoroSliderWidgetShowcaseScreen].
final class _FooterIndicatorTextBuilderOption extends StatelessWidget {
  const _FooterIndicatorTextBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show text below the slider?',
        onChanged: (value) => viewModel.state.footerIndicatorTextBuilderEnabled = value,
      ),
    );
  }
}
