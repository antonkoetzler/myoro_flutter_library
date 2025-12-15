part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroScrollable.dragStartBehavior] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _DragStartBehaviorOption extends StatelessWidget {
  const _DragStartBehaviorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroSingleSelectionDropdown<DragStartBehavior>(
      label: localization.storybookWidgetShowcaseOptionScrollableDragStartBehaviorLabel,
      selectedItemBuilder: (behavior) => _behaviorName(behavior),
      onChanged: (behavior) {
        if (behavior != null) {
          state.dragStartBehavior = behavior;
        }
      },
      itemBuilder: (_, behavior) {
        return MyoroMenuIconTextButtonItem(text: _behaviorName(behavior));
      },
      items: DragStartBehavior.values.toSet(),
      selectedItem: state.dragStartBehavior,
    );
  }

  String _behaviorName(DragStartBehavior behavior) {
    return switch (behavior) {
      DragStartBehavior.down => localization.storybookWidgetShowcaseOptionScrollableDragStartBehaviorDownLabel,
      DragStartBehavior.start => localization.storybookWidgetShowcaseOptionScrollableDragStartBehaviorStartLabel,
    };
  }
}
