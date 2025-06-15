part of '../myoro_drawer.dart';

/// Clickable area behind the [MyoroDrawer] that closes the [MyoroDrawer].
final class _Barrier extends StatelessWidget {
  final MyoroDrawerConfiguration _configuration;

  const _Barrier(this._configuration);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _configuration.barrierDismissable ? () => context.closeDrawer() : null,
      child: Container(color: MyoroColorDesignSystem.transparent),
    );
  }
}
