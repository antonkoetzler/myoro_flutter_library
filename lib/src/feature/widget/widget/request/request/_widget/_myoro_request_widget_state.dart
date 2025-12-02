part of '../widget/myoro_request_widget.dart';

/// [State] of [MyoroRequestWidget].
final class _MyoroRequestWidgetState<T> extends State<MyoroRequestWidget<T>> {
  /// Local request controller.
  MyoroRequestController<T>? _localRequestController;

  /// Request controller.
  MyoroRequestController<T> get _requestController {
    return widget.requestController ?? (_localRequestController ??= MyoroRequestController<T>(widget.request));
  }

  /// Initialization function.
  @override
  void initState() {
    super.initState();
    _requestController.addListener(_requestControllerListener);
    if (widget.fetchOnInitialization) {
      _requestController.fetch();
    }
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroRequestWidget<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.request != null) {
      _requestController.setRequestCallback(widget.request!);
    }
    if (widget.requestController != null) {
      _localRequestController?.dispose();
      _localRequestController = null;
    }
  }

  /// Dispose function.
  @override
  void dispose() {
    _localRequestController?.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final successBuilder = widget.successBuilder;

    return Provider.value(
      value: widget.style,
      child: ValueListenableBuilder(
        valueListenable: _requestController,
        builder: (_, request, _) {
          final status = request.status;

          return switch (status) {
            MyoroRequestEnum.idle => const _Loader(),
            MyoroRequestEnum.loading => const _Loader(),
            MyoroRequestEnum.success => successBuilder(context, request.data),
            MyoroRequestEnum.error => _ErrorFeedback(
              _requestController,
              widget.errorShowIcon,
              widget.errorTitle,
              widget.errorSubtitle,
            ),
          };
        },
      ),
    );
  }

  /// Request controller listener.
  void _requestControllerListener() {
    final request = _requestController.request;
    final status = request.status;
    if (status.isSuccess) {
      widget.onSuccess?.call(request.data);
    }
    if (status.isError) {
      widget.onError?.call(request.errorMessage!);
    }
  }
}
