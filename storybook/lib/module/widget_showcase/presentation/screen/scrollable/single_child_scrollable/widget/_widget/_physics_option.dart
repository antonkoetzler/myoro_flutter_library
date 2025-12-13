part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroScrollable.physics] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _PhysicsOption extends StatelessWidget {
  const _PhysicsOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroSingleSelectionDropdown<ScrollPhysics?>(
      label: localization.storybookWidgetShowcaseOptionScrollablePhysicsLabel,
      selectedItemBuilder: (physics) => _physicsName(physics),
      onChanged: (physics) => state.physics = physics,
      itemBuilder: (_, physics) {
        return MyoroMenuIconTextButtonItem(text: _physicsName(physics));
      },
      items: const {
        null,
        AlwaysScrollableScrollPhysics(),
        NeverScrollableScrollPhysics(),
        BouncingScrollPhysics(),
        ClampingScrollPhysics(),
      },
      selectedItem: state.physics,
    );
  }

  String _physicsName(ScrollPhysics? physics) {
    return switch (physics) {
      null => localization.storybookWidgetShowcaseOptionScrollablePhysicsNoneLabel,
      AlwaysScrollableScrollPhysics() =>
        localization.storybookWidgetShowcaseOptionScrollablePhysicsAlwaysScrollableLabel,
      NeverScrollableScrollPhysics() => localization.storybookWidgetShowcaseOptionScrollablePhysicsNeverScrollableLabel,
      BouncingScrollPhysics() => localization.storybookWidgetShowcaseOptionScrollablePhysicsBouncingLabel,
      ClampingScrollPhysics() => localization.storybookWidgetShowcaseOptionScrollablePhysicsClampingLabel,
      _ => localization.storybookWidgetShowcaseOptionScrollablePhysicsCustomLabel,
    };
  }
}
