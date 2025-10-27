part of '../widget/myoro_drawer.dart';

/// Clickable area behind the [MyoroDrawer] that closes the [MyoroDrawer].
final class _Barrier extends StatelessWidget {
  const _Barrier(this._barrierDismissable);

  final bool _barrierDismissable;

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: _barrierDismissable ? () => context.closeDrawer() : null,
      child: Container(color: MyoroColors.transparent),
    );
  }
}
