part of '../myoro_form.dart';

/// [Form] of [MyoroForm].
class _Form<T> extends StatelessWidget {
  final MyoroFormController<T> _controller;
  MyoroRequest<T> get _request => _controller.request;
  MyoroFormConfiguration<T> get _configuration => _controller.state.configuration;
  MyoroFormBuilder<T> get _builder => _configuration.builder;
  GlobalKey<FormState> get _formKey => _controller.state.formKey;

  const _Form(this._controller);

  @override
  Widget build(_) {
    return Form(key: _formKey, child: _builder(_request, _controller));
  }
}
