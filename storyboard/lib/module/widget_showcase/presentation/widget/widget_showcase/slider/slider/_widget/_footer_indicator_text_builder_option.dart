part of '../myoro_slider_widget_showcase.dart';

/// [MyoroSliderConfiguration.footerIndicatorTextBuilder] option of [MyoroSliderWidgetShowcase].
final class _FooterIndicatorTextBuilderOption extends StatelessWidget {
  const _FooterIndicatorTextBuilderOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show text below the slider?',
        onChanged: (value) => viewModel.state.footerIndicatorTextBuilderEnabled = value,
      ),
    );
  }
}
