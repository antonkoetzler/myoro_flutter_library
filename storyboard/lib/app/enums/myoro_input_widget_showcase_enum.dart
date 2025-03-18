import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// To set which named constructor of the [MyoroInput] we are using.
enum MyoroInputWidgetShowcaseEnum {
  /// Default constructor.
  none('No formatter'),

  /// [MyoroInput.date].
  date('Dates'),

  /// [MyoroInput.number].
  number('Numbers');

  final String title;

  const MyoroInputWidgetShowcaseEnum(this.title);

  factory MyoroInputWidgetShowcaseEnum.fake() =>
      values[faker.randomGenerator.integer(values.length)];

  bool get isNone => this == none;
  bool get isDate => this == date;
  bool get isNumber => this == number;
}
