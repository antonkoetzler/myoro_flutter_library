import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Alike to Flutter's [TableColumnWidth], but since we need to depart from Flutter's
/// [Table], because it is bad, we need to create a model for the different tables of
/// width configurations for a [MyoroTable]'s columns.
final class MyoroTableColumnWidth extends Equatable {
  /// Width configuration.
  final MyoroTableColumnWidthEnum typeEnum;

  /// Fixed width of the column.
  final double? fixedWidth;

  MyoroTableColumnWidth._(
    this.typeEnum,
    this.fixedWidth,
  ) : assert(
          typeEnum.isFixed ? fixedWidth != null : true,
          '[MyoroTableColumnWidth]: If [typeEnum] is [MyoroTableColumnWidthEnum.fixed], [fixedWidth] needs to be provided.',
        );

  const MyoroTableColumnWidth.expanding()
      : typeEnum = MyoroTableColumnWidthEnum.expanding,
        fixedWidth = null;

  const MyoroTableColumnWidth.intrinsic()
      : typeEnum = MyoroTableColumnWidthEnum.intrinsic,
        fixedWidth = null;

  const MyoroTableColumnWidth.fixed(double width)
      : typeEnum = MyoroTableColumnWidthEnum.fixed,
        fixedWidth = width;

  MyoroTableColumnWidth copyWith({
    MyoroTableColumnWidthEnum? widthConfiguration,
    double? fixedWidth,
  }) {
    return MyoroTableColumnWidth._(
      widthConfiguration ?? typeEnum,
      fixedWidth ?? fixedWidth,
    );
  }

  factory MyoroTableColumnWidth.fake() {
    final widthConfiguration = MyoroTableColumnWidthEnum.fake();

    return MyoroTableColumnWidth._(
      widthConfiguration,
      widthConfiguration.isFixed ? faker.randomGenerator.decimal() : null,
    );
  }

  @override
  String toString() => ''
      'MyoroTableColumnWidth(\n'
      '  typeEnum: $typeEnum,\n'
      '  fixedWidth: $fixedWidth,\n'
      ');';

  @override
  List<Object?> get props => [typeEnum, fixedWidth];
}
