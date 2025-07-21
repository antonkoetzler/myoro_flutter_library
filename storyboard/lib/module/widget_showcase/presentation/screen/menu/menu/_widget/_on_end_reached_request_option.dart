part of '../myoro_menu_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.onEndReachedRequest] option of [MyoroMenuWidgetShowcaseScreen].
final class _OnEndReachedRequestOption extends StatelessWidget {
  const _OnEndReachedRequestOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Load more once end is reached?',
        onChanged: (value) => viewModel.state.onEndReachedRequestEnabled = value,
      ),
    );
  }
}
