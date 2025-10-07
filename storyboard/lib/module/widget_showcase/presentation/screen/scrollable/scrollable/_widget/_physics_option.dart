part of '../myoro_scrollables_widget_showcase_screen.dart';

/// Option for configuring scroll physics.
final class _PhysicsOption extends StatelessWidget {
  const _PhysicsOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScrollableWidgetShowcaseViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Scroll Physics', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        DropdownButton<ScrollPhysics?>(
          value: viewModel.physics,
          hint: const Text('Default'),
          isExpanded: true,
          items: const [
            DropdownMenuItem<ScrollPhysics?>(value: null, child: Text('Default')),
            DropdownMenuItem<ScrollPhysics?>(value: BouncingScrollPhysics(), child: Text('Bouncing')),
            DropdownMenuItem<ScrollPhysics?>(value: ClampingScrollPhysics(), child: Text('Clamping')),
            DropdownMenuItem<ScrollPhysics?>(value: NeverScrollableScrollPhysics(), child: Text('Never Scrollable')),
          ],
          onChanged: (ScrollPhysics? value) {
            viewModel.setPhysics(value);
          },
        ),
      ],
    );
  }
}
