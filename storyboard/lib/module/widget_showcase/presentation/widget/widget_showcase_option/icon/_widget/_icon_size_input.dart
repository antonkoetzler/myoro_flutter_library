part of '../icon_widget_showcase_option.dart';

/// [MyoroInput] to choose the size of the [IconData].
final class _IconSizeInput extends StatelessWidget {
  const _IconSizeInput();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;

    return MyoroInput.number(
      min: 5,
      max: 200,
      configuration: MyoroInputConfiguration(
        label: 'Icon size',
        onChanged: (text) => viewModel.iconSize = double.parse(text),
        checkboxOnChanged:
            configuration.iconSizeCheckboxOnChanged != null ? viewModel.iconSizeInputCheckboxOnChanged : null,
      ),
    );
  }
}
