part of '../myoro_button_widget_showcase.dart';

/// [MyoroButtonConfiguration.onTapDown] option of [MyoroButtonWidgetShowcase].
final class _OnTapDownEnabledOption extends StatelessWidget {
  const _OnTapDownEnabledOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Tap down enabled?',
        onChanged: (value) => viewModel.onTapDownEnabled = value,
      ),
    );
  }
}
