import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Input formatter to create a date.
final class MyoroDateInputFormatter extends MaskTextInputFormatter implements MyoroInputFormatter {
  MyoroDateInputFormatter() : super(mask: '##/##/####', filter: {'#': RegExp(r'[0-9]')});

  @override
  String get initialText => '00/00/0000';
}
