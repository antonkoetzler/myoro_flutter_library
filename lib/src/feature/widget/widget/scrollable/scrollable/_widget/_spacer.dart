part of '../bundle/myoro_scrollable_bundle.dart';

/// Spacer [Widget] that is displayed between the items.
class _Spacer extends StatelessWidget {
  /// Default constructor.
  const _Spacer();

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroListScrollableThemeExtension>();
    final style = context.read<MyoroListScrollableStyle>();
    final spacing = style.spacing ?? themeExtension.spacing;

    final viewModel = context.read<MyoroScrollableViewModel>();
    final state = viewModel.state;
    final direction = state.direction;

    return Container(
      // NOTE: [ListView] doesn't like to scroll when the mouse is over a spacer [SizedBox]...
      color: MyoroColors.transparent,
      height: switch (direction) {
        Axis.vertical => spacing,
        Axis.horizontal => null,
      },
      width: switch (direction) {
        Axis.vertical => null,
        Axis.horizontal => spacing,
      },
    );
  }
}
