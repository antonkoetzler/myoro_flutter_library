part of '../bundle/myoro_scrollable_bundle.dart';

/// Base [Widget] that stores the scrollable and the gradient.
abstract class _Base extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroScrollableStyle();

  /// Default value of [direction].
  static const directionDefaultValue = Axis.vertical;

  /// Default value of [reverse].
  static const reverseDefaultValue = false;

  /// Default value of [clipBehavior].
  static const clipBehaviorDefaultValue = Clip.hardEdge;

  /// Default value of [dragStartBehavior].
  static const dragStartBehaviorDefaultValue = DragStartBehavior.start;

  /// Default constructor.
  const _Base({
    super.key,
    this.style = styleDefaultValue,
    this.controller,
    this.direction = directionDefaultValue,
    this.reverse = reverseDefaultValue,
    this.clipBehavior = clipBehaviorDefaultValue,
    this.dragStartBehavior = dragStartBehaviorDefaultValue,
    this.physics,
  });

  /// Style.
  final MyoroScrollableStyle style;

  /// [ScrollController].
  final ScrollController? controller;

  /// [Axis].
  final Axis direction;

  /// Reversed.
  final bool reverse;

  /// Clip behavior.
  final Clip clipBehavior;

  /// Drag start behavior.
  final DragStartBehavior dragStartBehavior;

  /// Physics.
  final ScrollPhysics? physics;

  /// Build function.
  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        Provider.value(value: style),
        Provider(create: (_) => MyoroScrollableViewModel(initialState)),
      ],
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroScrollableViewModel>();
          final state = viewModel.state;
          final displayGradientController = state.displayGradientController;

          return ValueListenableBuilder(
            valueListenable: displayGradientController,
            builder: (_, displayGradient, _) {
              return Stack(
                children: [
                  build(context),
                  if (displayGradient) const Positioned.fill(child: _Gradient()),
                ],
              );
            },
          );
        },
      ),
    );
  }

  /// Builds the scrollable.
  Widget buildScrollable(BuildContext context);

  /// Initial state getter.
  MyoroScrollableState get initialState;
}
