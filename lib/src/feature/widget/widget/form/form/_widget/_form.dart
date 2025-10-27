part of '../widget/myoro_form.dart';

/// [Form] of [MyoroForm].
class _Form<T> extends StatelessWidget {
  const _Form(this._builder);

  final MyoroFormBuilder<T> _builder;

  @override
  Widget build(context) {
    final controller = context.read<MyoroFormController<T>>();
    final formKey = controller.formKey;
    return Form(key: formKey, child: _builder(controller));
  }
}
