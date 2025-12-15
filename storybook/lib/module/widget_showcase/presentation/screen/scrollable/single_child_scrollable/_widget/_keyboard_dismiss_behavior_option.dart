part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroListScrollable.keyboardDismissBehavior] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _KeyboardDismissBehaviorOption extends StatelessWidget {
  const _KeyboardDismissBehaviorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroSingleSelectionDropdown<ScrollViewKeyboardDismissBehavior>(
      label: localization.storybookWidgetShowcaseOptionScrollableKeyboardDismissBehaviorLabel,
      selectedItemBuilder: (behavior) => _behaviorName(behavior),
      onChanged: (behavior) {
        if (behavior != null) {
          state.keyboardDismissBehavior = behavior;
        }
      },
      itemBuilder: (_, behavior) {
        return MyoroMenuIconTextButtonItem(text: _behaviorName(behavior));
      },
      items: ScrollViewKeyboardDismissBehavior.values.toSet(),
      selectedItem: state.keyboardDismissBehavior,
    );
  }

  String _behaviorName(ScrollViewKeyboardDismissBehavior behavior) {
    return switch (behavior) {
      ScrollViewKeyboardDismissBehavior.manual =>
        localization.storybookWidgetShowcaseOptionScrollableKeyboardDismissBehaviorManualLabel,
      ScrollViewKeyboardDismissBehavior.onDrag =>
        localization.storybookWidgetShowcaseOptionScrollableKeyboardDismissBehaviorOnDragLabel,
    };
  }
}
