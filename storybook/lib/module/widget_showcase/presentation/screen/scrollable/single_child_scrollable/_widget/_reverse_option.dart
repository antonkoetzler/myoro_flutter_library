part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroScrollable.reverse] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _ReverseOption extends StatelessWidget {
  const _ReverseOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionScrollableReverseLabel,
      onChanged: (value) => state.reverse = value,
    );
  }
}
