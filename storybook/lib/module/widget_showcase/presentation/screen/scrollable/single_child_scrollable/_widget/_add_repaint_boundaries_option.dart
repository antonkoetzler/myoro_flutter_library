part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.addRepaintBoundaries] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _AddRepaintBoundariesOption extends StatelessWidget {
  const _AddRepaintBoundariesOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionScrollableAddRepaintBoundariesLabel,
      onChanged: (value) => state.addRepaintBoundaries = value,
    );
  }
}
