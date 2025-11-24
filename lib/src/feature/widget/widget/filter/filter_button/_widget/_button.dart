part of '../bundle/myoro_field_button_bundle.dart';

/// Button of a filter button.
final class _Button<T> extends StatelessWidget {
  /// Default constructor.
  const _Button();

  /// Build function.
  @override
  Widget build(context) {
    final viewModel = context.read<MyoroFilterButtonViewModel<T>>();
    final toggleSelection = viewModel.toggleSelection;
    final state = viewModel.state;
    final buttonTextController = state.buttonTextController;

    return ValueListenableBuilder(
      valueListenable: buttonTextController,
      builder: (_, buttonText, _) {
        return MyoroIconTextButton(
          style: const MyoroIconTextButtonStyle().secondary(context),
          text: buttonText,
          onTapUp: toggleSelection,
        );
      },
    );
  }
}
