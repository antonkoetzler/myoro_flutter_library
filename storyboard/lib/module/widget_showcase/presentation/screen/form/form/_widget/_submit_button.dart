part of '../myoro_form_widget_showcase_screen.dart';

/// Button to submit the [MyoroForm] in [MyoroFormWidgetShowcaseScreen].
final class _SubmitButton extends StatelessWidget {
  final MyoroFormNotifier<String> _formNotifier;

  const _SubmitButton(this._formNotifier);

  @override
  Widget build(context) {
    return MyoroIconTextButton(
      /// [MyoroInputConfiguration.validation] of [_Input].
      configuration: MyoroIconTextButtonConfiguration(
        borderBuilder: (_) => MyoroButtonStyleEnum.border(context),
        onTapUp: (_) => _formNotifier.fetch(),
        textConfiguration: const MyoroTextConfiguration(text: 'Submit'),
      ),
    );
  }
}
