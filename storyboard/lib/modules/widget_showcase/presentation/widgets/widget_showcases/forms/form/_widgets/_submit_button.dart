part of '../myoro_form_widget_showcase.dart';

/// Button to submit the [MyoroForm] in [MyoroFormWidgetShowcase].
final class _SubmitButton extends StatelessWidget {
  final MyoroFormController<String> _formController;

  const _SubmitButton(this._formController);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextButton(
      /// [MyoroInputConfiguration.validation] of [_Input].
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
          onTapUp: (_) => _formController.fetch(),
        ),
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Submit'),
      ),
    );
  }
}
