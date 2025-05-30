part of '../myoro_icon_text_button_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroIconTextButtonWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final buttonViewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();
    final iconTextButtonViewModel = context.read<MyoroIconTextButtonWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: iconTextButtonViewModel,
      builder: (_, __) {
        return IntrinsicWidth(
          child: MyoroIconTextButton(
            configuration: MyoroIconTextButtonConfiguration(
              buttonConfiguration: MyoroButtonConfiguration(
                tooltipConfiguration: buttonViewModel.tooltipEnabled ? MyoroTooltipConfiguration.fake() : null,
                cursor: buttonViewModel.cursor,
                borderRadius: buttonViewModel.borderRadius,
                backgroundColorBuilder:
                    buttonViewModel.backgroundColorBuilderEnabled
                        ? (tapStatusEnum) => buttonViewModel.backgroundColorBuilder(buttonViewModel, tapStatusEnum)
                        : null,
                borderBuilder:
                    buttonViewModel.borderBuilderEnabled
                        ? (tapStatusEnum) => buttonViewModel.borderBuilder(buttonViewModel, tapStatusEnum)
                        : null,
                onTapDown: buttonViewModel.onTapDownEnabled ? (_) => buttonViewModel.onTapDown(context) : null,
                onTapUp: buttonViewModel.onTapUpEnabled ? (_) => buttonViewModel.onTapUp(context) : null,
              ),
              invert: iconTextButtonViewModel.invert,
              spacing: iconTextButtonViewModel.spacing,
              padding: iconTextButtonViewModel.padding,
              contentColorBuilder:
                  iconTextButtonViewModel.enableContentColorBuilder
                      ? (tapStatusEnum) =>
                          iconTextButtonViewModel.contentColorBuilder(iconTextButtonViewModel, tapStatusEnum)
                      : null,
              iconConfiguration:
                  iconTextButtonViewModel.icon != null
                      ? MyoroIconTextButtonIconConfiguration(
                        icon: iconTextButtonViewModel.icon!,
                        size: iconTextButtonViewModel.iconSize,
                      )
                      : null,
              textConfiguration:
                  iconTextButtonViewModel.text.isNotEmpty
                      ? MyoroIconTextButtonTextConfiguration(
                        text: iconTextButtonViewModel.text,
                        maxLines: iconTextButtonViewModel.maxLines,
                        overflow: iconTextButtonViewModel.overflow,
                        alignment: iconTextButtonViewModel.alignment,
                        style: iconTextButtonViewModel.style,
                      )
                      : null,
            ),
          ),
        );
      },
    );
  }
}
