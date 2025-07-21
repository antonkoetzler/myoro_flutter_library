part of '../myoro_drawer_widget_showcase_screen.dart';

/// [MyoroDrawerConfiguration.showCloseButton] option in [MyoroDrawerWidgetShowcaseScreen].
final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show close button?',
        onChanged: (value) => viewModel.showCloseButton = value,
      ),
    );
  }
}
