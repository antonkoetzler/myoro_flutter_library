part of '../icon_widget_showcase_option.dart';

/// [MyoroInput] to choose the size of the [IconData].
final class _IconSizeInput extends StatelessWidget {
  const _IconSizeInput();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();

    return MyoroInput.number(
      min: 5,
      max: 200,
      configuration: MyoroInputConfiguration(
        label: 'Icon size',
        onChanged: (text) => viewModel.iconSizeController.value = double.parse(text),
      ),
    );
  }
}
