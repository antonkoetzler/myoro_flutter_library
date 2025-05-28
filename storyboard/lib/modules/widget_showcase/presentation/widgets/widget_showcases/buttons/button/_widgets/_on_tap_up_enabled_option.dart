part of '../myoro_button_widget_showcase.dart';

/// [MyoroButtonConfiguration.onTapUp] option of [MyoroButtonWidgetShowcase].
final class _OnTapUpEnabledOption extends StatelessWidget {
  const _OnTapUpEnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Tap up enabled?',
        onChanged: (value) => viewModel.onTapUpEnabled = value,
      ),
    );
  }
}
