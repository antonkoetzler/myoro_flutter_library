import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model for [MyoroTableV2].
final class MyoroTableV2Configuration<T> extends Equatable {
  /// Title columns of the table.
  final List<MyoroTableV2Column> titleColumns;

  /// Spacing between columns.
  final double? columnSpacing;

  /// [MyoroDataConfiguration] of the [MyoroTableV2].
  final MyoroDataConfiguration<T> dataConfiguration;

  /// [MyoroTableV2Controller] of the [MyoroTableV2].
  final MyoroTableV2Controller<T>? controller;

  MyoroTableV2Configuration({
    required this.titleColumns,
    this.columnSpacing,
    required this.dataConfiguration,
    this.controller,
  }) : assert(
         titleColumns.isNotEmpty,
         '[MyoroTableV2]: [titleColumns] cannot be empty',
       );

  MyoroTableV2Configuration.fake()
    : titleColumns = List.generate(
        faker.randomGenerator.integer(10),
        (int index) => MyoroTableV2Column.fake(),
      ),
      columnSpacing =
          faker.randomGenerator.boolean()
              ? faker.randomGenerator.decimal(scale: 10)
              : null,
      dataConfiguration = MyoroDataConfiguration.fake(),
      controller =
          faker.randomGenerator.boolean() ? MyoroTableV2Controller() : null;

  MyoroTableV2Configuration<T> copyWith({
    List<MyoroTableV2Column>? titleColumns,
    double? columnSpacing,
    MyoroDataConfiguration<T>? dataConfiguration,
    MyoroTableV2Controller<T>? controller,
  }) {
    return MyoroTableV2Configuration(
      titleColumns: titleColumns ?? this.titleColumns,
      columnSpacing: columnSpacing ?? this.columnSpacing,
      dataConfiguration: dataConfiguration ?? this.dataConfiguration,
      controller: controller ?? this.controller,
    );
  }

  @override
  List<Object?> get props {
    return [titleColumns, columnSpacing, dataConfiguration, controller];
  }

  @override
  String toString() =>
      'MyoroTableV2Configuration<$T>(\n'
      '  titleColumns: $titleColumns,\n'
      '  columnSpacing: $columnSpacing,\n'
      '  dataConfiguration: $dataConfiguration,\n'
      '  controller: $controller,\n'
      ');';
}
