part of '../myoro_dropdown.dart';

/// Clickable area of [_InputTriggerArea].
///
/// We create a private [Widget] just for this as we need
/// to keep [MyoroInput._ClearTextButton] clickable.
final class _InputTriggerAreaRegion extends StatelessWidget {
  final String _tapRegionGroupId;
  final VoidCallback? _onTapUp;
  final double? width;
  final double? height;

  const _InputTriggerAreaRegion(this._tapRegionGroupId, this._onTapUp, {this.width, this.height});

  @override
  Widget build(BuildContext context) {
    final bool onTapUpNotNull = _onTapUp != null;

    return SizedBox(
      width: width,
      height: height,
      child: MouseRegion(
        cursor: onTapUpNotNull ? SystemMouseCursors.click : SystemMouseCursors.basic,
        child: GestureDetector(
          onTapUp: onTapUpNotNull ? (_) => _onTapUp() : null,
          child: TapRegion(groupId: _tapRegionGroupId, child: Container(color: Colors.transparent)),
        ),
      ),
    );
  }
}
