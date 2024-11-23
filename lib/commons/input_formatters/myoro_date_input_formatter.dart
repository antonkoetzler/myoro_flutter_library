import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// Input formatter to create a date.
final class MyoroDateInputFormatter extends MaskTextInputFormatter {
  MyoroDateInputFormatter()
      : super(
          mask: '##/##/####',
          filter: {'#': RegExp(r'[0-9]')},
        );
}
