part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Clickable area of [_InputTriggerArea].
///
/// We create a private [Widget] just for this as we need
/// to keep [MyoroInput._ClearTextButton] clickable.
final class _InputTriggerAreaRegion<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _InputTriggerAreaRegion(this._enabled, {this.width, this.height});

  final bool _enabled;
  final double? width;
  final double? height;

  @override
  Widget build(context) {
    final viewModel = context.read<V>();

    return SizedBox(
      width: width,
      height: height,
      child: MouseRegion(
        cursor: _enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
        child: GestureDetector(
          onTapUp: _enabled ? (_) => viewModel.toggleMenu() : null,
          child: TapRegion(
            groupId: viewModel.state.tapRegionGroupId,
            child: Container(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
