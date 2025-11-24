part of '../myoro_text_widget_showcase_screen.dart';

/// [MyoroText.text] option of [MyoroTextWidgetShowcaseScreen].
final class _TextOption extends StatelessWidget {
  const _TextOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTextWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return TextWidgetShowcaseOption(
      configuration: TextWidgetShowcaseOptionConfiguration(
        label: localization.storybookWidgetShowcaseOptionTextTextLabel,
        textInitialValue: state.text,
        textOnChanged: (text) => state.text = text,
      ),
    );
  }
}
