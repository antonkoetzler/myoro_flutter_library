part of '../myoro_checkbox_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroCheckboxWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCheckboxWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final onChanged = viewModel.onChanged;

    return ListenableBuilder(
      listenable: state,
      builder: (_, __) {
        final style = viewModel.style;
        final label = state.label;
        return MyoroCheckbox(style: style, label: label, onChanged: (v) => onChanged(context, v));
      },
    );
  }
}
