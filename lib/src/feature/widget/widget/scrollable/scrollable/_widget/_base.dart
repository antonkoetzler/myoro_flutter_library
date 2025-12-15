part of '../bundle/myoro_scrollable_bundle.dart';

/// Base [Widget] that stores the scrollable and the gradient.
abstract class _Base<S extends MyoroScrollableStyle> extends StatelessWidget {
  /// Default value of [direction].
  static const directionDefaultValue = Axis.vertical;

  /// Default value of [thumbVisibility].
  static const thumbVisibilityDefaultValue = false;

  /// Default value of [reverse].
  static const reverseDefaultValue = false;

  /// Default value of [clipBehavior].
  static const clipBehaviorDefaultValue = Clip.hardEdge;

  /// Default value of [dragStartBehavior].
  static const dragStartBehaviorDefaultValue = DragStartBehavior.start;

  /// Default constructor.
  const _Base({
    super.key,
    required this.style,
    this.scrollController,
    this.direction = directionDefaultValue,
    this.thumbVisibility = thumbVisibilityDefaultValue,
    this.reverse = reverseDefaultValue,
    this.clipBehavior = clipBehaviorDefaultValue,
    this.dragStartBehavior = dragStartBehaviorDefaultValue,
    this.physics,
  });

  /// Style.
  final S style;

  /// [ScrollController].
  final ScrollController? scrollController;

  /// [Axis].
  final Axis direction;

  /// Whether or not the scrollbar should always be shown when the scrollable is scrollable.
  final bool thumbVisibility;

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
          final displayStartingGradientController = state.displayStartingGradientController;
          final displayEndingGradientController = state.displayEndingGradientController;
          final scrollController = state.scrollController;
          final thumbVisibility = state.thumbVisibility;

          return ListenableBuilder(
            listenable: Listenable.merge([displayStartingGradientController, displayEndingGradientController]),
            builder: (_, _) {
              final displayStartingGradient = state.displayStartingGradient;
              final displayEndingGradient = state.displayEndingGradient;

              return Stack(
                children: [
                  Scrollbar(
                    controller: scrollController,
                    thumbVisibility: thumbVisibility,
                    child: buildScrollable(context),
                  ),
                  if (displayStartingGradient) _Gradient<S>(isStarting: true),
                  if (displayEndingGradient) _Gradient<S>(isStarting: false),
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
