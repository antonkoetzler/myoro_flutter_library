part of 'myoro_menu_widget_showcase_bloc.dart';

final class MyoroMenuWidgetShowcaseState extends Equatable {
  /// [MyoroMenu.constraints.minWidth].
  final double? minWidth;

  /// [MyoroMenu.constraints.maxWidth].
  final double? maxWidth;

  /// [MyoroMenu.constraints.minHeight].
  final double? minHeight;

  /// [MyoroMenu.constraints.maxHeight].
  final double? maxHeight;

  /// If [MyoroMenu.searchCallback] is not null.
  final bool searchCallbackEnabled;

  const MyoroMenuWidgetShowcaseState({
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.searchCallbackEnabled = false,
  });

  MyoroMenuWidgetShowcaseState copyWith({
    double? minWidth,
    bool enableMinWidth = true,
    double? maxWidth,
    bool enableMaxWidth = true,
    double? minHeight,
    bool enableMinHeight = true,
    double? maxHeight,
    bool enableMaxHeight = true,
    bool? searchCallbackEnabled,
  }) {
    return MyoroMenuWidgetShowcaseState(
      minWidth: enableMinWidth ? (minWidth ?? this.minWidth) : null,
      maxWidth: enableMaxWidth ? (maxWidth ?? this.maxWidth) : null,
      minHeight: enableMinHeight ? (minHeight ?? this.minHeight) : null,
      maxHeight: enableMaxHeight ? (maxHeight ?? this.maxHeight) : null,
      searchCallbackEnabled:
          searchCallbackEnabled ?? this.searchCallbackEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroMenuWidgetShowcaseState(\n'
      '  minWidth: $minWidth,\n'
      '  maxWidth: $maxWidth,\n'
      '  minHeight: $minHeight,\n'
      '  maxHeight: $maxHeight,\n'
      '  searchCallbackEnabled: $searchCallbackEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      minWidth,
      maxWidth,
      minHeight,
      maxHeight,
      searchCallbackEnabled,
    ];
  }
}
