// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_column.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTableColumn] once the code is generated.
///
/// ```dart
/// class MyoroTableColumn with _$MyoroTableColumnMixin {}
/// ```
mixin _$MyoroTableColumnMixin {
  MyoroTableColumn get self => this as MyoroTableColumn;

  @override
  bool operator ==(Object other) {
    return other is MyoroTableColumn &&
        other.runtimeType == runtimeType &&
        other.tooltipMessage == self.tooltipMessage &&
        other.widthConfiguration == self.widthConfiguration &&
        other.child == self.child;
  }

  @override
  int get hashCode {
    return Object.hash(self.tooltipMessage, self.widthConfiguration, self.child);
  }

  @override
  String toString() =>
      'MyoroTableColumn(\n'
      '  tooltipMessage: ${self.tooltipMessage},\n'
      '  widthConfiguration: ${self.widthConfiguration},\n'
      '  child: ${self.child},\n'
      ');';
}
