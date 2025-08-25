part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.onEndReachedRequest] option of [MyoroMenusWidgetShowcaseScreen].
final class _OnEndReachedRequestOption extends StatelessWidget {
  const _OnEndReachedRequestOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Fetch more content when end is reached?',
        onChanged: (onEndReachedRequestEnabled) => state.onEndReachedRequestEnabled = onEndReachedRequestEnabled,
      ),
    );
  }
}
