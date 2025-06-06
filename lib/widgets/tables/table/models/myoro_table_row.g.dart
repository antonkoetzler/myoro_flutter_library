// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_row.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroTableRowExtension<T> on MyoroTableRow<T> {
  MyoroTableRow<T> copyWith({
    void Function(T)? onTapDown,
    bool onTapDownProvided = true,
    void Function(T)? onTapUp,
    bool onTapUpProvided = true,
    List<Widget>? cells,
  }) {
    return MyoroTableRow(
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
      cells: cells ?? this.cells,
    );
  }
}

/// Apply this mixin to [MyoroTableRow] once the code is generated.
///
/// ```dart
/// class MyoroTableRow<T> with $MyoroTableRowMixin<T> {}
/// ```
mixin $MyoroTableRowMixin<T> {
  MyoroTableRow<T> get self => this as MyoroTableRow<T>;

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
