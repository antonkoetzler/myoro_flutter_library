import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_loader.dart';
part '../_widget/_myoro_request_widget_state.dart';
part '../_widget/_error_feedback.dart';

/// [Widget] to reduce boilerplate when handling statuses when
/// using [MyoroRequest]s or [MyoroRequestController]s.
class MyoroRequestWidget<T> extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroRequestWidgetStyle();

  /// Default value of [fetchOnInitialization].
  static const fetchOnInitializationDefaultValue = true;

  /// Default value of [errorShowIcon].
  static const errorShowIconDefaultValue = MyoroErrorFeedback.showIconDefaultValue;

  /// Default value of [errorTitle].
  static const errorTitleDefaultValue = kMyoroEmptyString;

  /// Default value of [errorSubtitle].
  static const errorSubtitleDefaultValue = MyoroErrorFeedback.subtitleDefaultValue;

  /// Default constructor.
  const MyoroRequestWidget({
    super.key,
    this.style = styleDefaultValue,
    this.fetchOnInitialization = fetchOnInitializationDefaultValue,
    this.errorShowIcon = errorShowIconDefaultValue,
    this.errorTitle = errorTitleDefaultValue,
    this.errorSubtitle = errorSubtitleDefaultValue,
    this.request,
    this.requestController,
    this.onSuccess,
    this.onError,
    required this.successBuilder,
  }) : assert(
         (request != null) ^ (requestController != null),
         '[MyoroRequestWidget<$T>]: Either [request] (x)or [requestController] must be provided.',
       );

  /// Style.
  final MyoroRequestWidgetStyle style;

  /// If the request should be fetched on initialization.
  final bool fetchOnInitialization;

  /// [MyoroErrorFeedback.showIcon].
  final bool errorShowIcon;

  /// [MyoroErrorFeedback.title].
  final String errorTitle;

  /// [MyoroErrorFeedback.subtitle].
  final String errorSubtitle;

  /// Request callback.
  final MyoroRequestControllerRequest<T>? request;

  /// Request controller.
  final MyoroRequestController<T>? requestController;

  /// Executed when the request is completed successfully.
  final ValueChanged<T?>? onSuccess;

  /// Executed when the request is completed unsuccessfully.
  final ValueChanged<String>? onError;

  /// Builder of the content within the request widget.
  final Widget Function(BuildContext, T?) successBuilder;

  /// Create state function.
  @override
  State<MyoroRequestWidget<T>> createState() {
    return _MyoroRequestWidgetState<T>();
  }
}
