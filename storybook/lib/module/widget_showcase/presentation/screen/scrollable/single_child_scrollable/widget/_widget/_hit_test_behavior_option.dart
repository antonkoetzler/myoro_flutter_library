part of '../myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.hitTestBehavior] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _HitTestBehaviorOption extends StatelessWidget {
  const _HitTestBehaviorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroSingleSelectionDropdown<HitTestBehavior>(
      label: localization.storybookWidgetShowcaseOptionScrollableHitTestBehaviorLabel,
      selectedItemBuilder: (behavior) => _behaviorName(behavior),
      onChanged: (behavior) {
        if (behavior != null) {
          state.hitTestBehavior = behavior;
        }
      },
      itemBuilder: (_, behavior) {
        return MyoroMenuIconTextButtonItem(text: _behaviorName(behavior));
      },
      items: HitTestBehavior.values.toSet(),
      selectedItem: state.hitTestBehavior,
    );
  }

  String _behaviorName(HitTestBehavior behavior) {
    return switch (behavior) {
      HitTestBehavior.deferToChild =>
        localization.storybookWidgetShowcaseOptionScrollableHitTestBehaviorDeferToChildLabel,
      HitTestBehavior.opaque => localization.storybookWidgetShowcaseOptionScrollableHitTestBehaviorOpaqueLabel,
      HitTestBehavior.translucent =>
        localization.storybookWidgetShowcaseOptionScrollableHitTestBehaviorTranslucentLabel,
    };
  }
}
