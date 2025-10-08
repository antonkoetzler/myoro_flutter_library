part of '../myoro_form_widget_showcase_screen.dart';

/// Button to submit the [MyoroForm] in [MyoroFormWidgetShowcaseScreen].
final class _SubmitButton extends StatelessWidget {
  final MyoroFormNotifier<String> _formNotifier;

  const _SubmitButton(this._formNotifier);

  @override
  Widget build(context) {
    return IntrinsicWidth(
      child: MyoroIconTextButton(
        style: const MyoroIconTextButtonStyle().bordered(context),
        configuration: MyoroIconTextButtonConfiguration(
          onTapUp: (_) => _formNotifier.fetch(),
          textConfiguration: const MyoroTextConfiguration(text: 'Submit'),
        ),
      ),
    );
  }
}
