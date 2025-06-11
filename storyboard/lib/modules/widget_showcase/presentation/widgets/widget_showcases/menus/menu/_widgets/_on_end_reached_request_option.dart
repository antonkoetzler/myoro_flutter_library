part of '../myoro_menu_widget_showcase.dart';

/// [MyoroMenuConfiguration.onEndReachedRequest] option of [MyoroMenuWidgetShowcase].
final class _OnEndReachedRequestOption extends StatelessWidget {
  const _OnEndReachedRequestOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroMenuWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Load more once end is reached?',
        onChanged: (value) => viewModel.state.onEndReachedRequestEnabled = value,
      ),
    );
  }
}
