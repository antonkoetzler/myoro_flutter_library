part of 'myoro_modal_widget_showcase_bloc.dart';

final class MyoroModalWidgetShowcaseState extends Equatable {
  /// [MyoroModalConfiguration.barrierDismissable].
  final bool barrierDismissable;

  /// [MyoroModalConfiguration.constraints.minWidth].
  final double? minWidth;
  final bool minWidthEnabled;

  /// [MyoroModalConfiguration.constraints.maxWidth].
  final double? maxWidth;
  final bool maxWidthEnabled;

  /// [MyoroModalConfiguration.constraints.minHeight].
  final double? minHeight;
  final bool minHeightEnabled;

  /// [MyoroModalConfiguration.constraints.maxHeight].
  final double? maxHeight;
  final bool maxHeightEnabled;

  /// [MyoroModalConfiguration.title].
  final String? title;
  final bool titleEnabled;

  /// [MyoroModalConfiguration.showCloseButton].
  final bool showCloseButton;

  const MyoroModalWidgetShowcaseState({
    this.barrierDismissable = true,
    this.minWidth,
    this.minWidthEnabled = false,
    this.maxWidth,
    this.maxWidthEnabled = false,
    this.minHeight,
    this.minHeightEnabled = false,
    this.maxHeight,
    this.maxHeightEnabled = false,
    this.title,
    this.titleEnabled = false,
    this.showCloseButton = false,
  });

  MyoroModalWidgetShowcaseState copyWith({
    bool? barrierDismissable,
    double? minWidth,
    bool? minWidthEnabled,
    double? maxWidth,
    bool? maxWidthEnabled,
    double? minHeight,
    bool? minHeightEnabled,
    double? maxHeight,
    bool? maxHeightEnabled,
    String? title,
    bool? titleEnabled,
    bool? showCloseButton,
  }) {
    minWidthEnabled = minWidthEnabled ?? this.minWidthEnabled;
    maxWidthEnabled = maxWidthEnabled ?? this.maxWidthEnabled;
    minHeightEnabled = minHeightEnabled ?? this.minHeightEnabled;
    maxHeightEnabled = maxHeightEnabled ?? this.maxHeightEnabled;
    titleEnabled = titleEnabled ?? this.titleEnabled;

    return MyoroModalWidgetShowcaseState(
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      minWidth: minWidthEnabled ? (minWidth ?? this.minWidth) : null,
      minWidthEnabled: minWidthEnabled,
      maxWidth: maxWidthEnabled ? (maxWidth ?? this.maxWidth) : null,
      maxWidthEnabled: maxWidthEnabled,
      minHeight: minHeightEnabled ? (minHeight ?? this.minHeight) : null,
      minHeightEnabled: minHeightEnabled,
      maxHeight: maxHeightEnabled ? (maxHeight ?? this.maxHeight) : null,
      maxHeightEnabled: maxHeightEnabled,
      title: titleEnabled ? (title ?? this.title) : null,
      titleEnabled: titleEnabled,
      showCloseButton: showCloseButton ?? this.showCloseButton,
    );
  }

  @override
  String toString() => ''
      'MyoroModalWidgetShowcaseState(\n'
      '  barrierDismissable: $barrierDismissable,\n'
      '  minWidth: $minWidth,\n'
      '  minWidthEnabled: $minWidthEnabled,\n'
      '  maxWidth: $maxWidth,\n'
      '  maxWidthEnabled: $maxWidthEnabled,\n'
      '  minHeight: $minHeight,\n'
      '  minHeightEnabled: $maxHeightEnabled,\n'
      '  maxHeight: $maxHeight,\n'
      '  maxHeightEnabled: $maxHeightEnabled,\n'
      '  title: $title,\n'
      '  titleEnabled: $titleEnabled,\n'
      '  showCloseButton: $showCloseButton,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      barrierDismissable,
      minWidth,
      minWidthEnabled,
      maxWidth,
      maxWidthEnabled,
      minHeight,
      minHeightEnabled,
      maxHeight,
      maxHeightEnabled,
      title,
      titleEnabled,
      showCloseButton,
    ];
  }

  bool get constraintsEnabled => minWidth != null || maxWidth != null || minHeight != null || maxHeight != null;
}
