part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.primary] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _PrimaryOption extends StatelessWidget {
  const _PrimaryOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionScrollablePrimaryLabel,
      onChanged: (value) => state.primary = value,
    );
  }
}
