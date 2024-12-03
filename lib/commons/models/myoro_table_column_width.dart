import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Alike to Flutter's [TableColumnWidth], but since we need to depart from Flutter's
/// [Table], because it is bad, we need to create a model for the different tables of
/// width configurations for a [MyoroTable]'s columns.
final class MyoroTableColumnWidth extends Equatable {
  /// Width configuration.
  final MyoroTableColumnWidthEnum _widthConfiguration;

  /// Fixed width of the column.
  final double? _fixedWidth;

  MyoroTableColumnWidth._(
    this._widthConfiguration,
    this._fixedWidth,
  ) : assert(
          _widthConfiguration.isFixed ? _fixedWidth != null : true,
          '[MyoroTableColumnWidth]: If [_widthConfiguration] is [MyoroTableColumnWidthEnum.fixed], [fixedWidth] needs to be provided.',
        );

  const MyoroTableColumnWidth.expanding()
      : _widthConfiguration = MyoroTableColumnWidthEnum.expanding,
        _fixedWidth = null;

  const MyoroTableColumnWidth.intrinsic()
      : _widthConfiguration = MyoroTableColumnWidthEnum.intrinsic,
        _fixedWidth = null;

  const MyoroTableColumnWidth.fixed(double width)
      : _widthConfiguration = MyoroTableColumnWidthEnum.fixed,
        _fixedWidth = width;

  MyoroTableColumnWidth copyWith({
    MyoroTableColumnWidthEnum? widthConfiguration,
    double? fixedWidth,
  }) {
    return MyoroTableColumnWidth._(
      widthConfiguration ?? _widthConfiguration,
      fixedWidth ?? _fixedWidth,
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
      '  _widthConfiguration: $_widthConfiguration,\n'
      '  _fixedWidth: $_fixedWidth,\n'
      ');';

  @override
  List<Object?> get props => [_widthConfiguration, _fixedWidth];
}
