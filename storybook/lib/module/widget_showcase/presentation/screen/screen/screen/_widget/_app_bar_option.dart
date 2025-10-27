part of '../myoro_screen_widget_showcase_screen.dart';

/// [MyoroScreenConfiguration.appBar] option of [MyoroScreenWidgetShowcaseScreen].
final class _AppBarOption extends StatelessWidget {
  const _AppBarOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(label: 'Show app bar?', onChanged: (value) => state.appBarEnabled = value);
  }
}
