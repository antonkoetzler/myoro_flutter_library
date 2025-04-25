import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model used to encapsulate the width configuration of a [MyoroTableColumn].
class MyoroTableColumnWidthConfiguration extends Equatable {
  /// Width configuration enum.
  final MyoroTableColumnWidthConfigurationEnum enumValue;

  /// Fixed width of the [MyoroTableColumn] if [enum] is [MyoroTableColumnWidthConfigurationEnum.fixed].
  final double? fixedWidth;

  const MyoroTableColumnWidthConfiguration({required this.enumValue, this.fixedWidth})
    : assert(
        !(enumValue == MyoroTableColumnWidthConfigurationEnum.fixed && fixedWidth == null),
        '[MyoroTableColumnWidthConfiguration]: If [enumValue] is '
        '[MyoroTableColumnWidthConfigurationEnum], [fixedWidth] cannot be null.',
      );

  factory MyoroTableColumnWidthConfiguration.fake() {
    final enumValue = MyoroTableColumnWidthConfigurationEnum.fake();
    return MyoroTableColumnWidthConfiguration(
      enumValue: enumValue,
      fixedWidth: enumValue.isFixed ? faker.randomGenerator.decimal(scale: 200, min: 20) : null,
    );
  }

  MyoroTableColumnWidthConfiguration copyWith({
    MyoroTableColumnWidthConfigurationEnum? enumValue,
    double? fixedWidth,
    bool fixedWidthProvided = true,
  }) {
    return MyoroTableColumnWidthConfiguration(
      enumValue: enumValue ?? this.enumValue,
      fixedWidth: fixedWidthProvided ? (fixedWidth ?? this.fixedWidth) : null,
    );
  }

  @override
  List<Object?> get props {
    return [enumValue, fixedWidth];
  }

  @override
  String toString() =>
      'MyoroTableColumnWidthConfiguration(\n'
      '  enumValue: $enumValue,\n'
      '  fixedWidth: $fixedWidth,\n'
      ');';
}
