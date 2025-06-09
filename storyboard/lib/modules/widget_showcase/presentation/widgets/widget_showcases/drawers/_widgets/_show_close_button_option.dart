part of '../myoro_drawer_widget_showcase.dart';

/// [MyoroDrawerConfiguration.showCloseButton] option in [MyoroDrawerWidgetShowcase].
final class _ShowCloseButtonOption extends StatelessWidget {
  const _ShowCloseButtonOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Show close button?',
        onChanged: (value) => viewModel.showCloseButton = value,
      ),
    );
  }
}
