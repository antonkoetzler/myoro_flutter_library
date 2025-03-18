import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Input formatter to create a time.
final class MyoroTimeInputFormatter extends MaskTextInputFormatter {
  final MyoroTimeInputFormatterEnum formatType;

  MyoroTimeInputFormatter({
    this.formatType = MyoroTimeInputFormatterEnum.hhMmSs,
  }) : super(mask: formatType.inputMask, filter: {'#': RegExp(r'[0-9]')});
}
