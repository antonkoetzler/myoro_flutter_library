part of '../myoro_form.dart';

/// [Form] of [MyoroForm].
class _Form<T> extends StatelessWidget {
  final MyoroFormNotifier<T> _controller;
  final MyoroFormBuilder<T> _builder;

  const _Form(this._controller, this._builder);

  @override
  Widget build(_) {
    return Form(key: _controller.formKey, child: _builder(_controller.request, _controller));
  }
}
