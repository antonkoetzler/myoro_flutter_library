import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_render_proxy_box.dart';
part '_widget/_single_child_render_object_widget.dart';

/// [Widget] used as an improved [LayoutBuilder].
///
/// Shoutout to https://github.com/gbtb16 for making this [Widget].
///
/// The #FlutterMoment at hand:
/// - Let [W] = A [Widget].
/// - If [W] contains a [LayoutBuilder], the [Widget]s wrapping [W] in the [Widget]
/// tree cannot contain an [IntrinsicWidth] as this triggers this error:
/// `The following assertion was thrown during performLayout():`
/// `LayoutBuilder does not support returning intrinsic dimensions.`
/// `Calculating the intrinsic dimensions would require running the layout callback speculatively, which`
/// `might mutate the live render object tree.`
class MyoroLayoutBuilder extends StatefulWidget {
  final MyoroLayoutBuilderChildCallback builder;

  const MyoroLayoutBuilder({super.key, required this.builder});

  @override
  State<MyoroLayoutBuilder> createState() => _MyoroLayoutBuilderState();
}

final class _MyoroLayoutBuilderState extends State<MyoroLayoutBuilder> {
  MyoroLayoutBuilderChildCallback get _builder => widget.builder;

  final _constraintsNotifier = ValueNotifier<BoxConstraints>(const BoxConstraints());

  @override
  void dispose() {
    _constraintsNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return _SingleChildRenderObjectWidget(
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
