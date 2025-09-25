part of '../myoro_drawer.dart';

/// Clickable area behind the [MyoroDrawer] that closes the [MyoroDrawer].
final class _Barrier extends StatelessWidget {
  const _Barrier();

  @override
  Widget build(context) {
    final configuration = context.read<MyoroDrawerConfiguration>();
    return GestureDetector(
      onTap: configuration.barrierDismissable ? () => context.closeDrawer() : null,
      child: Container(color: MyoroColors.transparent),
    );
  }
}
