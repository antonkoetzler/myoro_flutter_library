import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Width configuration of a [MyoroTableV2Column].
///
/// TODO: Needs to be tested.
class MyoroTableV2ColumnWidthConfiguration extends Equatable {
  /// Widget configuration enum.
  final MyoroTableV2ColumnWidthConfigurationEnum typeEnum;

  /// Fixed width when [typeEnum] is [MyoroTableV2ColumnWidthConfigurationEnum.fixed].
  final double? fixedWidth;

  const MyoroTableV2ColumnWidthConfiguration({required this.typeEnum, this.fixedWidth})
    : assert(
        typeEnum == MyoroTableV2ColumnWidthConfigurationEnum.fixed
            ? fixedWidth != null
            : fixedWidth == null,
        '[MyoroTableV2ColumnWidthConfiguration]: If [typeEnum] is [MyoroTableV2ColumnWidthConfigurationEnum.fixed], '
        '[fixedWidth] cannot be null. Otherwise, [fixedWidth] must be null.',
      );

  factory MyoroTableV2ColumnWidthConfiguration.fake() {
    final typeEnum = MyoroTableV2ColumnWidthConfigurationEnum.fake();
    return MyoroTableV2ColumnWidthConfiguration(
      typeEnum: typeEnum,
      fixedWidth: typeEnum.isFixed ? faker.randomGenerator.decimal(scale: 200) : null,
    );
  }

  MyoroTableV2ColumnWidthConfiguration copyWith({
    MyoroTableV2ColumnWidthConfigurationEnum? typeEnum,
    double? fixedWidth,
  }) {
    return MyoroTableV2ColumnWidthConfiguration(
      typeEnum: typeEnum ?? this.typeEnum,
      fixedWidth: fixedWidth ?? this.fixedWidth,
    );
  }

  @override
  List<Object?> get props {
    return [typeEnum, fixedWidth];
  }

  @override
  String toString() =>
      'MyoroTableV2ColumnWidthConfiguration(\n'
      '  typeEnum: $typeEnum,\n'
      '  fixedWidth: $fixedWidth,\n'
      ');';
}
