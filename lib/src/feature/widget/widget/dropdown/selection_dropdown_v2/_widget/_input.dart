part of '../bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Input for selection dropdowns.
class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownV2ViewModel>();
    final toggleDropdown = viewModel.toggleDropdown;

    return Stack(
      children: [
        const AbsorbPointer(child: MyoroInput()),
        Positioned.fill(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTapUp: (_) => toggleDropdown(),
              child: Container(color: Colors.pink.withOpacity(0.3)),
            ),
          ),
        ),
      ],
    );
  }
}
