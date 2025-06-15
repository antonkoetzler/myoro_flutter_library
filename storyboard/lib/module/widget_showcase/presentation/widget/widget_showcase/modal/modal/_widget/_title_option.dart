part of '../myoro_modal_widget_showcase.dart';

/// [MyoroModalConfiguration.title] option of [MyoroModalWidgetShowcase].
final class _TitleOption extends StatelessWidget {
  const _TitleOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroModalWidgetShowcaseViewModel>();

    return MyoroInput(configuration: MyoroInputConfiguration(onChanged: (text) => viewModel.state.title = text));
  }
}
