part of '../myoro_screen_widget_showcase.dart';

/// [MyoroScreenConfiguration.appBar] option of [MyoroScreenWidgetShowcase].
final class _AppBarOption extends StatelessWidget {
  const _AppBarOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show app bar?',
        onChanged: (value) => viewModel.state.appBarEnabled = value,
      ),
    );
  }
}
