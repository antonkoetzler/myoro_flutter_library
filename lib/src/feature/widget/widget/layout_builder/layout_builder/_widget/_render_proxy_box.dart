part of '../myoro_layout_builder.dart';

final class _RenderProxyBox extends RenderProxyBox {
  _RenderProxyBox(this._constraintsCallback);

  MyoroLayoutBuilderConstraintsCallback _constraintsCallback;
  set constraintsCallback(MyoroLayoutBuilderConstraintsCallback value) {
    if (_constraintsCallback == value) return;

    _constraintsCallback = value;
    markNeedsLayout();
    markNeedsSemanticsUpdate();
  }

  BoxConstraints? _oldConstraints;

  @override
  void performLayout() {
    if (_oldConstraints != constraints) {
      _oldConstraints = constraints;

      SchedulerBinding.instance.scheduleFrameCallback((_) {
        if (!attached) return;
        _constraintsCallback(constraints);
      });
    }

    super.performLayout();
  }
}
