import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing the width configuration of a column in a [MyoroTable].
final class MyoroTableColumnWidth extends Equatable {
  /// Enum used to distinguish configuration selected.
  final MyoroTableColumnWidthEnum columnWidthEnum;

  /// When [MyoroTableColumnWidth.fixed] is used, this is the fixed width.
  final double? fixedWidth;

  MyoroTableColumnWidth({
    required this.columnWidthEnum,
    this.fixedWidth,
  }) : assert(
          columnWidthEnum.isFixed ? fixedWidth != null : true,
          '[MyoroTableColumnWidth]: If [columnWidthEnum] is [MyoroTableColumnWidthEnum.fixed], [fixedWidth] must be provided.',
        );

  factory MyoroTableColumnWidth.fake() {
    final columnWidthEnum = MyoroTableColumnWidthEnum.fake();
    return MyoroTableColumnWidth(
      columnWidthEnum: columnWidthEnum,
      fixedWidth: columnWidthEnum.isFixed ? faker.randomGenerator.integer(200, min: 50).toDouble() : null,
    );
  }

  MyoroTableColumnWidth copyWith({
    MyoroTableColumnWidthEnum? columnWidthEnum,
    double? fixedWidth,
  }) {
    return MyoroTableColumnWidth(
      columnWidthEnum: columnWidthEnum ?? this.columnWidthEnum,
      fixedWidth: fixedWidth ?? this.fixedWidth,
    );
  }

  @override
  String toString() => ''
      'MyoroTableColumnWidth(\n'
      '  columnWidthEnum: $columnWidthEnum,\n'
      '  fixedWidth: $fixedWidth\n'
      ');';

  @override
  List<Object?> get props => [columnWidthEnum, fixedWidth];
}
