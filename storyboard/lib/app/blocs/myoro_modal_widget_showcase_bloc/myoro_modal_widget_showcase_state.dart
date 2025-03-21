part of 'myoro_modal_widget_showcase_bloc.dart';

final class MyoroModalWidgetShowcaseState extends Equatable {
  /// [MyoroModalConfiguration.barrierDismissable].
  final bool barrierDismissable;

  /// [MyoroModalConfiguration.constraints.minWidth].
  final double? minWidth;

  /// [MyoroModalConfiguration.constraints.maxWidth].
  final double? maxWidth;

  /// [MyoroModalConfiguration.constraints.minHeight].
  final double? minHeight;

  /// [MyoroModalConfiguration.constraints.maxHeight].
  final double? maxHeight;

  /// [MyoroModalConfiguration.title].
  final String? title;

  /// [MyoroModalConfiguration.showCloseButton].
  final bool showCloseButton;

  const MyoroModalWidgetShowcaseState({
    this.barrierDismissable = true,
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
    this.title,
    this.showCloseButton = false,
  });

  MyoroModalWidgetShowcaseState copyWith({
    bool? barrierDismissable,
    double? minWidth,
    bool minWidthEnabled = true,
    double? maxWidth,
    bool maxWidthEnabled = true,
    double? minHeight,
    bool minHeightEnabled = true,
    double? maxHeight,
    bool maxHeightEnabled = true,
    String? title,
    bool titleEnabled = true,
    bool? showCloseButton,
  }) {
    return MyoroModalWidgetShowcaseState(
      barrierDismissable: barrierDismissable ?? this.barrierDismissable,
      minWidth: minWidthEnabled ? (minWidth ?? this.minWidth) : null,
      maxWidth: maxWidthEnabled ? (maxWidth ?? this.maxWidth) : null,
      minHeight: minHeightEnabled ? (minHeight ?? this.minHeight) : null,
      maxHeight: maxHeightEnabled ? (maxHeight ?? this.maxHeight) : null,
      title: titleEnabled ? (title ?? this.title) : null,
      showCloseButton: showCloseButton ?? this.showCloseButton,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroModalWidgetShowcaseState(\n'
      '  barrierDismissable: $barrierDismissable,\n'
      '  minWidth: $minWidth,\n'
      '  maxWidth: $maxWidth,\n'
      '  minHeight: $minHeight,\n'
      '  maxHeight: $maxHeight,\n'
      '  title: $title,\n'
      '  showCloseButton: $showCloseButton,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      barrierDismissable,
      minWidth,
      maxWidth,
      minHeight,
      maxHeight,
      title,
      showCloseButton,
    ];
  }

  bool get constraintsEnabled =>
      minWidth != null ||
      maxWidth != null ||
      minHeight != null ||
      maxHeight != null;
}
