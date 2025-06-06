// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_column.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroTableColumnExtension on MyoroTableColumn {
  MyoroTableColumn copyWith({
    String? tooltipMessage,
    bool tooltipMessageProvided = true,
    MyoroTableColumnWidthConfiguration? widthConfiguration,
    Widget? child,
  }) {
    return MyoroTableColumn(
      tooltipMessage:
          tooltipMessageProvided
              ? (tooltipMessage ?? this.tooltipMessage)
              : null,
      widthConfiguration: widthConfiguration ?? this.widthConfiguration,
      child: child ?? this.child,
    );
  }
}

/// Apply this mixin to [MyoroTableColumn] once the code is generated.
///
/// ```dart
/// class MyoroTableColumn with $MyoroTableColumnMixin {}
/// ```
mixin $MyoroTableColumnMixin {
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
    return Object.hash(
      self.tooltipMessage,
      self.widthConfiguration,
      self.child,
    );
  }

  @override
  String toString() =>
      'MyoroTableColumn(\n'
      '  tooltipMessage: ${self.tooltipMessage},\n'
      '  widthConfiguration: ${self.widthConfiguration},\n'
      '  child: ${self.child},\n'
      ');';
}
