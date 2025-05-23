import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum for distinguishing formatting of the time (i.e. MM:SS or HH:MM:SS) in [MyoroTimeInputFormatter].
enum MyoroTimeInputFormatterEnum {
  mmSs('##:##', '00:00'),
  hhMmSs('##:##:##', '00:00:00');

  final String inputMask;
  final String emptyValue;

  const MyoroTimeInputFormatterEnum(this.inputMask, this.emptyValue);

  factory MyoroTimeInputFormatterEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isMmSs => this == mmSs;
  bool get isHhMmSs => this == hhMmSs;
}
