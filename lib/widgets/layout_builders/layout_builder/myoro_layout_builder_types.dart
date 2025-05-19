part of 'myoro_layout_builder.dart';

/// Callback to pass the current [BoxConstraints] of the [MyoroLayoutBuilder].
typedef MyoroLayoutBuilderConstraintsCallback = void Function(BoxConstraints constraints);

/// Callback to builder to build the [MyoroLayoutBuilder].
typedef MyoroLayoutBuilderChildCallback = Widget Function(BuildContext context, BoxConstraints constraints);
