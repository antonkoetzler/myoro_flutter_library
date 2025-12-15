part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.shrinkWrap] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _ShrinkWrapOption extends StatelessWidget {
  const _ShrinkWrapOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionScrollableShrinkWrapLabel,
      onChanged: (value) => state.shrinkWrap = value,
    );
  }
}
