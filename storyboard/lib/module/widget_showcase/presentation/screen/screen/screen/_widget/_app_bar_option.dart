part of '../myoro_screen_widget_showcase_screen.dart';

/// [MyoroScreenConfiguration.appBar] option of [MyoroScreenWidgetShowcaseScreen].
final class _AppBarOption extends StatelessWidget {
  const _AppBarOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show app bar?',
        onChanged: (value) => viewModel.state.appBarEnabled = value,
      ),
    );
  }
}
