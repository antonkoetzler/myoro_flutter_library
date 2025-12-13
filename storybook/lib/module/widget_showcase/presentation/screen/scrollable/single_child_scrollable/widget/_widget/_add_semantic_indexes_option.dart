part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.addSemanticIndexes] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _AddSemanticIndexesOption extends StatelessWidget {
  const _AddSemanticIndexesOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionScrollableAddSemanticIndexesLabel,
      onChanged: (value) => state.addSemanticIndexes = value,
    );
  }
}
