part of '../myoro_layout_builder.dart';

final class _SingleChildRenderObjectWidget extends SingleChildRenderObjectWidget {
  final MyoroLayoutBuilderConstraintsCallback constraintsCallback;

  const _SingleChildRenderObjectWidget({Key? key, required this.constraintsCallback, required Widget child})
    : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderProxyBox(constraintsCallback);
  }

  @override
  void updateRenderObject(BuildContext context, _RenderProxyBox renderObject) {
    renderObject.constraintsCallback = constraintsCallback;
  }
}
