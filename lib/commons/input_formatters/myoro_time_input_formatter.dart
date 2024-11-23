import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// Input formatter to create a time.
final class MyoroTimeInputFormatter extends MaskTextInputFormatter {
  MyoroTimeInputFormatter([bool mmSs = false])
      : super(
          mask: mmSs ? '##:##' : '##:##:##',
          filter: {'#': RegExp(r'[0-9]')},
        );
}
