part of '../icon_widget_showcase_option.dart';

/// [MyoroInput] to choose the size of the [IconData].
final class _IconSizeInput extends StatelessWidget {
  const _IconSizeInput();

  @override
  Widget build(context) {
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;
    final enabledController = viewModel.enabledController;

    return ValueListenableBuilder(
      valueListenable: enabledController,
      builder: (_, bool enabled, _) {
        return MyoroNumberInput(
          min: 5,
          max: 200,
          label: 'Icon size',
          enabled: enabled,
          onChanged: (text) => viewModel.iconSize = double.parse(text),
          checkboxOnChanged: configuration.iconSizeCheckboxOnChanged != null
              ? viewModel.iconSizeInputCheckboxOnChanged
              : null,
        );
      },
    );
  }
}
