import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_test/flutter_test.dart';

/// Callback to pass the current [BoxConstraints] of the [MyoroLayoutBuilder].
typedef MyoroLayoutBuilderConstraintsCallback = void Function(
    BoxConstraints constraints);

/// Callback to builder to build the [MyoroLayoutBuilder].
typedef MyoroLayoutBuilderChildCallback = Widget Function(
    BuildContext context, BoxConstraints constraints);

/// [Widget] used as an improved [LayoutBuilder].
///
/// The #FlutterMoment at hand:
/// - Let [W] = A [Widget].
/// - If [W] contains a [LayoutBuilder], the [Widget]s wrapping [W] in the [Widget]
/// tree cannot contain an [IntrinsicWidth] as this triggers this error:
/// `The following assertion was thrown during performLayout():`
/// `LayoutBuilder does not support returning intrinsic dimensions.`
/// `Calculating the intrinsic dimensions would require running the layout callback speculatively, which`
/// `might mutate the live render object tree.`
final class MyoroLayoutBuilder extends StatefulWidget {
  final MyoroLayoutBuilderChildCallback builder;

  const MyoroLayoutBuilder({
    super.key,
    required this.builder,
  });

  static Finder finder({
    MyoroLayoutBuilderChildCallback? builder,
    bool builderEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroLayoutBuilder &&
          (builderEnabled ? w.builder == builder : true),
    );
  }

  @override
  State<MyoroLayoutBuilder> createState() => _MyoroLayoutBuilderState();
}

final class _MyoroLayoutBuilderState extends State<MyoroLayoutBuilder> {
  MyoroLayoutBuilderChildCallback get _builder => widget.builder;

  final _constraintsNotifier =
      ValueNotifier<BoxConstraints>(const BoxConstraints());

  @override
  void dispose() {
    _constraintsNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _MyoroLayoutBuilder(
      constraintsCallback: (constraints) {
        if (mounted && _constraintsNotifier.value != constraints) {
          _constraintsNotifier.value = constraints;
        }
      },
      child: ValueListenableBuilder(
        valueListenable: _constraintsNotifier,
        builder: (context, BoxConstraints constraints, child) {
          return _builder(context, constraints);
        },
      ),
    );
  }
}

final class _MyoroLayoutBuilder extends SingleChildRenderObjectWidget {
  final MyoroLayoutBuilderConstraintsCallback constraintsCallback;

  const _MyoroLayoutBuilder({
    Key? key,
    required this.constraintsCallback,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderMyoroLayoutBuilder(constraintsCallback);
  }

  @override
  void updateRenderObject(
      BuildContext context, _RenderMyoroLayoutBuilder renderObject) {
    renderObject.constraintsCallback = constraintsCallback;
  }
}

final class _RenderMyoroLayoutBuilder extends RenderProxyBox {
  _RenderMyoroLayoutBuilder(this._constraintsCallback);

  MyoroLayoutBuilderConstraintsCallback _constraintsCallback;
  MyoroLayoutBuilderConstraintsCallback get constraintsCallback =>
      _constraintsCallback;
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
