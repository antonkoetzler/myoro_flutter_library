part of '../myoro_input_widget_showcase.dart';

/// Submission button when [MyoroInputWidgetShowcaseState.validationEnabled] is true.
final class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();
    final formController = viewModel.state.formController;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => formController.fetch()),
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Submit'),
      ),
    );
  }
}
