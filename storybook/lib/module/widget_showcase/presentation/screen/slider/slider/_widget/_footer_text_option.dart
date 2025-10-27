part of '../myoro_sliders_widget_showcase_screen.dart';

/// [MyoroSliderConfiguration.footerText] option of [MyoroSlidersWidgetShowcaseScreen].
final class _FooterTextOption extends StatelessWidget {
  const _FooterTextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSlidersWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Show text below the slider?', onChanged: (value) => state.footerTextEnabled = value);
  }
}
