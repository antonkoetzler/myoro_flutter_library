part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.searchCallback] option of [MyoroMenusWidgetShowcaseScreen].
final class _SearchCallbackOption extends StatelessWidget {
  const _SearchCallbackOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Enable search?',
      onChanged: (searchCallbackEnabled) => state.searchCallbackEnabled = searchCallbackEnabled,
    );
  }
}
