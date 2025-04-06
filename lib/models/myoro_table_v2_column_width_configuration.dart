import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model used to encapsulate the width configuration of a [MyoroTableV2Column].
final class MyoroTableV2ColumnWidthConfiguration extends Equatable {
  /// Width configuration enum.
  final MyoroTableV2ColumnWidthConfigurationEnum enumValue;

  /// Fixed width of the [MyoroTableV2Column] if [enum] is [MyoroTableV2ColumnWidthConfigurationEnum.fixed].
  final double? fixedWidth;

  MyoroTableV2ColumnWidthConfiguration({
    required this.enumValue,
    this.fixedWidth,
  }) : assert(
         !(enumValue.isFixed && fixedWidth == null),
         '[MyoroTableV2ColumnWidthConfiguration]: If [enumValue] is '
         '[MyoroTableV2ColumnWidthConfigurationEnum], [fixedWidth] cannot be null.',
       );

  factory MyoroTableV2ColumnWidthConfiguration.fake() {
    final enumValue = MyoroTableV2ColumnWidthConfigurationEnum.fake();
    return MyoroTableV2ColumnWidthConfiguration(
      enumValue: enumValue,
      fixedWidth:
          enumValue.isFixed
              ? faker.randomGenerator.decimal(scale: 200, min: 20)
              : null,
    );
  }

  MyoroTableV2ColumnWidthConfiguration copyWith({
    MyoroTableV2ColumnWidthConfigurationEnum? enumValue,
    double? fixedWidth,
  }) {
    return MyoroTableV2ColumnWidthConfiguration(
      enumValue: enumValue ?? this.enumValue,
      fixedWidth: fixedWidth ?? this.fixedWidth,
    );
  }

  @override
  List<Object?> get props {
    return [enumValue, fixedWidth];
  }

  @override
  String toString() =>
      'MyoroTableV2ColumnWidthConfiguration(\n'
      '  enumValue: $enumValue,\n'
      '  fixedWidth: $fixedWidth,\n'
      ');';
}
