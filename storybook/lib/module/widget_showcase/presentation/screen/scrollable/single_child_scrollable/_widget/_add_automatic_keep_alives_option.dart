part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.addAutomaticKeepAlives] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _AddAutomaticKeepAlivesOption extends StatelessWidget {
  const _AddAutomaticKeepAlivesOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroCheckbox(
      label: localization.storybookWidgetShowcaseOptionScrollableAddAutomaticKeepAlivesLabel,
      onChanged: (value) => state.addAutomaticKeepAlives = value,
    );
  }
}
