import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Width configuration of a [MyoroTable].
class MyoroTableColumnWidthConfiguration extends Equatable {
  /// Width configuration enum.
  final MyoroTableColumnWidthConfigurationEnum typeEnum;

  /// Fixed width when [typeEnum] is [MyoroTableColumnWidthConfigurationEnum.fixed].
  final double? fixedWidth;

  const MyoroTableColumnWidthConfiguration({required this.typeEnum, this.fixedWidth})
    : assert(
        (typeEnum == MyoroTableColumnWidthConfigurationEnum.fixed)
            ? (fixedWidth != null)
            : (fixedWidth == null),
        '[MyoroTableColumnWidthConfiguration]: If [typeEnum] is [MyoroTableColumnWidthConfigurationEnum.fixed], '
        '[fixedWidth] cannot be null. Vice versa, [fixedWidth] must be null if [typeEnum] is any other value.',
      );

  factory MyoroTableColumnWidthConfiguration.fake() {
    final typeEnum = MyoroTableColumnWidthConfigurationEnum.fake();

    return MyoroTableColumnWidthConfiguration(
      typeEnum: typeEnum,
      fixedWidth: typeEnum.isFixed ? faker.randomGenerator.decimal(scale: 50) : null,
    );
  }

  MyoroTableColumnWidthConfiguration copyWith({
    MyoroTableColumnWidthConfigurationEnum? typeEnum,
    double? fixedWidth,
    bool fixedWidthProvided = true,
  }) {
    return MyoroTableColumnWidthConfiguration(
      typeEnum: typeEnum ?? this.typeEnum,
      fixedWidth: fixedWidthProvided ? (fixedWidth ?? this.fixedWidth) : null,
    );
  }

  @override
  List<Object?> get props {
    return [typeEnum, fixedWidth];
  }

  @override
  String toString() =>
      'MyoroTableColumnWidthConfiguration(\n'
      '  typeEnum: $typeEnum,\n'
      '  fixedWidth: $fixedWidth,\n'
      ');';
}
