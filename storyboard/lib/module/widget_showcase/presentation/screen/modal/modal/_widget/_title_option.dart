part of '../myoro_modal_widget_showcase_screen.dart';

/// [MyoroModalConfiguration.title] option of [MyoroModalWidgetShowcaseScreen].
final class _TitleOption extends StatelessWidget {
  const _TitleOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseScreenViewModel>();
    return MyoroInput(configuration: MyoroInputConfiguration(onChanged: (text) => viewModel.state.title = text));
  }
}
