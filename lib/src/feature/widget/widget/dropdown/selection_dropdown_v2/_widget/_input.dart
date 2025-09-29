part of '../bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Input for selection dropdowns.
class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(_) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapUp: (_) => print('here'),
        child: Stack(
          children: [
            const AbsorbPointer(child: MyoroInput()),
            Positioned.fill(child: Container(color: Colors.pink.withOpacity(0.3))),
            here,
          ],
        ),
      ),
    );
  }
}
