part of '../widget/myoro_scrollables_widget_showcase_screen.dart';

/// [MyoroScrollable.clipBehavior] option of [MyoroScrollablesWidgetShowcaseScreen].
final class _ClipBehaviorOption extends StatelessWidget {
  const _ClipBehaviorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScrollablesWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return MyoroSingleSelectionDropdown<Clip>(
      label: localization.storybookWidgetShowcaseOptionScrollableClipBehaviorLabel,
      selectedItemBuilder: (clip) => _clipName(clip),
      onChanged: (clip) {
        if (clip != null) {
          state.clipBehavior = clip;
        }
      },
      itemBuilder: (_, clip) {
        return MyoroMenuIconTextButtonItem(text: _clipName(clip));
      },
      items: Clip.values.toSet(),
      selectedItem: state.clipBehavior,
    );
  }

  String _clipName(Clip clip) {
    return switch (clip) {
      Clip.none => localization.storybookWidgetShowcaseOptionScrollableClipBehaviorNoneLabel,
      Clip.hardEdge => localization.storybookWidgetShowcaseOptionScrollableClipBehaviorHardEdgeLabel,
      Clip.antiAlias => localization.storybookWidgetShowcaseOptionScrollableClipBehaviorAntiAliasLabel,
      Clip.antiAliasWithSaveLayer =>
        localization.storybookWidgetShowcaseOptionScrollableClipBehaviorAntiAliasWithSaveLayerLabel,
    };
  }
}
