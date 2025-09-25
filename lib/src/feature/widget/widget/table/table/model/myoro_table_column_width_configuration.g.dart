// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_column_width_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTableColumnWidthConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroTableColumnWidthConfiguration with _$MyoroTableColumnWidthConfigurationMixin {}
/// ```
mixin _$MyoroTableColumnWidthConfigurationMixin {
  MyoroTableColumnWidthConfiguration get self => this as MyoroTableColumnWidthConfiguration;

  MyoroTableColumnWidthConfiguration copyWith({
    MyoroTableColumnWidthConfigurationEnum? typeEnum,
    double? fixedWidth,
    bool fixedWidthProvided = true,
  }) {
    return MyoroTableColumnWidthConfiguration(
      typeEnum: typeEnum ?? self.typeEnum,
      fixedWidth: fixedWidthProvided ? (fixedWidth ?? self.fixedWidth) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableColumnWidthConfiguration &&
        other.runtimeType == runtimeType &&
        other.typeEnum == self.typeEnum &&
        other.fixedWidth == self.fixedWidth;
  }

  @override
  int get hashCode {
    return Object.hash(self.typeEnum, self.fixedWidth);
  }

  @override
  String toString() =>
      'MyoroTableColumnWidthConfiguration(\n'
      '  typeEnum: ${self.typeEnum},\n'
      '  fixedWidth: ${self.fixedWidth},\n'
      ');';
}
