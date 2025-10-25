part of '../myoro_icon_text_button_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenScreenConfiguration.widget] of [MyoroIconTextButtonWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final iconTextButtonViewModel = context.read<MyoroIconTextButtonWidgetShowcaseScreenViewModel>();
    final buttonViewModel = iconTextButtonViewModel.state.buttonViewModel;

    return ListenableBuilder(
      listenable: iconTextButtonViewModel.state.buttonViewModel.state,
      builder: (_, _) {
        final buttonState = buttonViewModel.state;
        final onTapDown = buttonState.onTapDownEnabled ? (_) => buttonViewModel.onTapDown(context) : null;
        final onTapUp = buttonState.onTapUpEnabled ? (_) => buttonViewModel.onTapUp(context) : null;
        final tooltipConfiguration = buttonState.tooltipEnabled ? MyoroTooltipConfiguration.fake() : null;
        final cursor = buttonState.cursor;
        final isLoading = buttonState.isLoading;

        return ListenableBuilder(
          listenable: iconTextButtonViewModel.state,
          builder: (_, _) {
            final iconTextButtonState = iconTextButtonViewModel.state;
            final invert = iconTextButtonState.invert;
            final text = iconTextButtonState.text;
            final maxLines = iconTextButtonState.maxLines;
            final overflow = iconTextButtonState.overflow;
            final alignment = iconTextButtonState.alignment;
            final style = iconTextButtonState.style;
            final icon = iconTextButtonState.icon;
            final iconSize = iconTextButtonState.iconSize;

            return IntrinsicWidth(
              child: MyoroIconTextButton(
                tooltipConfiguration: tooltipConfiguration,
                cursor: cursor,
                onTapDown: onTapDown,
                onTapUp: onTapUp,
                isLoading: isLoading,
                invert: invert,
                iconConfiguration: icon != null ? MyoroIconConfiguration(icon: icon, size: iconSize) : null,
                textConfiguration:
                    text.isNotEmpty
                        ? MyoroTextConfiguration(
                          text: text,
                          maxLines: maxLines,
                          overflow: overflow,
                          alignment: alignment,
                          style: style,
                        )
                        : null,
              ),
            );
          },
        );
      },
    );
  }
}
