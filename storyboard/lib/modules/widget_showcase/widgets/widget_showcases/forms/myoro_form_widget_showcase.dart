import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Text that triggers in error in the [MyoroForm].
const _errorText = '123';

/// Form & input validation.
String? _validation(TextEditingController controller) {
  if (controller.text == _errorText) {
    return 'Error message ($_errorText) provided.';
  }
  return null;
}

/// Model that returns the text and text color of the form's result.
typedef _FormResult = (String text, Color textColor);

/// Widget showcase for [MyoroForm].
final class MyoroFormWidgetShowcase extends StatelessWidget {
  const MyoroFormWidgetShowcase({super.key});

  @override
  Widget build(BuildContext context) => const WidgetShowcase(widget: _Widget());
}

final class _Widget extends StatefulWidget {
  const _Widget();

  @override
  State<_Widget> createState() => _WidgetState();
}

class _WidgetState extends State<_Widget> {
  final _controller = TextEditingController();
  final _formResultTextNotifier = ValueNotifier<_FormResult?>(null);

  @override
  void dispose() {
    _controller.dispose();
    _formResultTextNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroFormWidgetShowcaseThemeExtension>();

    return MyoroForm<_FormResult>(
      validation: () => _validation(_controller),
      request: () => ('Form finish successfully!', themeExtension.successColor),
      onSuccess: (_FormResult? result) => _formResultTextNotifier.value = result,
      onError:
          (String errorMessage) =>
              _formResultTextNotifier.value = (errorMessage, themeExtension.errorColor),
      builder: (result, status, controller) {
        return Column(
          mainAxisAlignment: themeExtension.widgetMainAxisAlignment,
          children: [
            _Input(_controller),
            SizedBox(height: themeExtension.widgetSpacing),
            _SubmitButton(controller.finish),
            ValueListenableBuilder(
              valueListenable: _formResultTextNotifier,
              builder: (_, _FormResult? formResult, __) {
                if (formResult == null) return const SizedBox.shrink();

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: themeExtension.widgetSpacing),
                    _ResultText(formResult),
                  ],
                );
              },
            ),
          ],
        );
      },
    );
  }
}

final class _Input extends StatelessWidget {
  final TextEditingController controller;

  const _Input(this.controller);

  @override
  Widget build(BuildContext context) {
    return MyoroInput(
      configuration: MyoroInputConfiguration(
        controller: controller,
        inputStyle:
            context.resolveThemeExtension<MyoroFormWidgetShowcaseThemeExtension>().widgetInputStyle,
        placeholder: 'Type "$_errorText" in the input to display an error.',
        validation: (_) => _validation(controller),
      ),
    );
  }
}

final class _SubmitButton extends StatelessWidget {
  final VoidCallback _onTapUp;

  const _SubmitButton(this._onTapUp);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        textConfiguration: const MyoroIconTextButtonTextConfiguration(text: 'Click me!'),
        borderBuilder: (_) => MyoroButtonVariantEnum.border(context),
        onTapUp: (_) => _onTapUp(),
      ),
    );
  }
}

final class _ResultText extends StatelessWidget {
  final _FormResult formResult;

  const _ResultText(this.formResult);

  @override
  Widget build(BuildContext context) {
    return Text(
      formResult.$1,
      style: context
          .resolveThemeExtension<MyoroFormWidgetShowcaseThemeExtension>()
          .resultTextStyle
          .withColor(formResult.$2),
    );
  }
}
