part of '../myoro_slider_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.footerText] option of [MyoroSliderWidgetShowcaseScreen].
final class _FooterTextOption extends StatelessWidget {
  const _FooterTextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSliderWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show text below the slider?',
        onChanged: (value) => viewModel.state.footerTextEnabled = value,
      ),
    );
  }
}
