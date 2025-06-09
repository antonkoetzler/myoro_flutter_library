part of '../myoro_drawer_widget_showcase.dart';

/// Option to display the drawer on the left or right of the screen.
final class _IsEndDrawerOption extends StatelessWidget {
  const _IsEndDrawerOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'End drawer?',
        onChanged: (value) => viewModel.isEndDrawer = value,
      ),
    );
  }
}
