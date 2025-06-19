part of '../myoro_drawer_widget_showcase_screen.dart';

/// Option to display the drawer on the left or right of the screen.
final class _IsEndDrawerOption extends StatelessWidget {
  const _IsEndDrawerOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDrawerWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'End drawer?',
        onChanged: (value) => viewModel.isEndDrawer = value,
      ),
    );
  }
}
