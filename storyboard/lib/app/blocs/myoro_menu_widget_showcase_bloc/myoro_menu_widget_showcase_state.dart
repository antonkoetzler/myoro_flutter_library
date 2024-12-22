part of 'myoro_menu_widget_showcase_bloc.dart';

final class MyoroMenuWidgetShowcaseState extends Equatable {
  /// [MyoroMenu.constraints.minWidth].
  final double? minWidth;
  final bool enableMinWidth;

  /// [MyoroMenu.constraints.maxWidth].
  final double? maxWidth;
  final bool enableMaxWidth;

  /// [MyoroMenu.constraints.minHeight].
  final double? minHeight;
  final bool enableMinHeight;

  /// [MyoroMenu.constraints.maxHeight].
  final double? maxHeight;
  final bool enableMaxHeight;

  /// If [MyoroMenu.searchCallback] is not null.
  final bool searchCallbackEnabled;

  const MyoroMenuWidgetShowcaseState({
    this.minWidth,
    this.enableMinWidth = false,
    this.maxWidth,
    this.enableMaxWidth = false,
    this.minHeight,
    this.enableMinHeight = false,
    this.maxHeight,
    this.enableMaxHeight = false,
    this.searchCallbackEnabled = false,
  });

  MyoroMenuWidgetShowcaseState copyWith({
    double? minWidth,
    bool? enableMinWidth,
    double? maxWidth,
    bool? enableMaxWidth,
    double? minHeight,
    bool? enableMinHeight,
    double? maxHeight,
    bool? enableMaxHeight,
    bool? searchCallbackEnabled,
  }) {
    enableMinWidth = enableMinWidth ?? this.enableMinWidth;
    enableMaxWidth = enableMaxWidth ?? this.enableMaxWidth;
    enableMinHeight = enableMinHeight ?? this.enableMinHeight;
    enableMaxHeight = enableMaxHeight ?? this.enableMaxHeight;

    return MyoroMenuWidgetShowcaseState(
      minWidth: enableMinWidth ? (minWidth ?? this.minWidth) : null,
      enableMinWidth: enableMinWidth,
      maxWidth: enableMaxWidth ? (maxWidth ?? this.maxWidth) : null,
      enableMaxWidth: enableMaxWidth,
      minHeight: enableMinHeight ? (minHeight ?? this.minHeight) : null,
      enableMinHeight: enableMinHeight,
      maxHeight: enableMaxHeight ? (maxHeight ?? this.maxHeight) : null,
      enableMaxHeight: enableMaxHeight,
      searchCallbackEnabled: searchCallbackEnabled ?? this.searchCallbackEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroMenuWidgetShowcaseState(\n'
      '  minWidth: $minWidth,\n'
      '  enableMinWidth: $enableMinWidth,\n'
      '  maxWidth: $maxWidth,\n'
      '  enableMaxWidth: $enableMaxWidth,\n'
      '  minHeight: $minHeight,\n'
      '  enableMinHeight: $enableMinHeight,\n'
      '  maxHeight: $maxHeight,\n'
      '  enableMaxHeight: $enableMaxHeight,\n'
      '  searchCallbackEnabled: $searchCallbackEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      minWidth,
      enableMinWidth,
      maxWidth,
      enableMaxWidth,
      minHeight,
      enableMinHeight,
      maxHeight,
      enableMaxHeight,
      searchCallbackEnabled,
    ];
  }
}
