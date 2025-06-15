part of '../myoro_form.dart';

/// [Form] of [MyoroForm].
class _Form<T> extends StatelessWidget {
  final MyoroFormController<T> _controller;
  final MyoroFormBuilder<T> _builder;

  const _Form(this._controller, this._builder);

  @override
  Widget build(_) {
    return Form(key: _controller.state.formKey, child: _builder(_controller.state.request, _controller));
  }
}
