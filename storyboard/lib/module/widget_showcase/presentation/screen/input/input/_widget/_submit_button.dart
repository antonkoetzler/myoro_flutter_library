part of '../myoro_input_widget_showcase_screen.dart';

/// Submission button when [MyoroInputWidgetShowcaseScreenState.validationEnabled] is true.
final class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final formController = viewModel.state.formController;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        onTapUp: (_) => formController.fetch(),
        textConfiguration: const MyoroTextConfiguration(text: 'Submit'),
      ),
    );
  }
}
