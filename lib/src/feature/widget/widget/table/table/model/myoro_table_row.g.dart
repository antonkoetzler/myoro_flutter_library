// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_row.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTableRow] once the code is generated.
///
/// ```dart
/// class MyoroTableRow<T> with _$MyoroTableRowMixin<T> {}
/// ```
mixin _$MyoroTableRowMixin<T> {
  MyoroTableRow<T> get self => this as MyoroTableRow<T>;

  MyoroTableRow<T> copyWith({
    void Function(T)? onTapDown,
    bool onTapDownProvided = true,
    void Function(T)? onTapUp,
    bool onTapUpProvided = true,
    List<Widget>? cells,
  }) {
    return MyoroTableRow(
      onTapDown: onTapDownProvided ? (onTapDown ?? self.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? self.onTapUp) : null,
      cells: cells ?? self.cells,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableRow<T> &&
        other.runtimeType == runtimeType &&
        other.onTapDown == self.onTapDown &&
        other.onTapUp == self.onTapUp &&
        other.cells == self.cells;
  }

  @override
  int get hashCode {
    return Object.hash(self.onTapDown, self.onTapUp, self.cells);
  }

  @override
  String toString() =>
      'MyoroTableRow<T>(\n'
      '  onTapDown: ${self.onTapDown},\n'
      '  onTapUp: ${self.onTapUp},\n'
      '  cells: ${self.cells},\n'
      ');';
}
