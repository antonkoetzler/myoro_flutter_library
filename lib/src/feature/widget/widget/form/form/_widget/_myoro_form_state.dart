part of '../widget/myoro_form.dart';

/// [State] of [MyoroForm].
final class _MyoroFormState<T> extends State<MyoroForm<T>> {
  /// Local controller.
  MyoroFormController<T>? _localController;

  /// Controller.
  MyoroFormController<T> get _controller {
    return widget.controller ??
        (_localController ??= MyoroFormController(
          validation: widget.validation,
          request: widget.request,
          onSuccess: widget.onSuccess,
          onError: widget.onError,
        ));
  }

  /// Dispose function.
  @override
  void dispose() {
    _localController?.dispose();
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    return InheritedProvider.value(value: _controller, child: _Form(widget.builder));
  }
}
