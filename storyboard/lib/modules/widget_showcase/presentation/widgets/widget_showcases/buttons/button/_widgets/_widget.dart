part of '../myoro_button_widget_showcase.dart';

/// [WidgetShowcase.widget] of [MyoroButtonWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroButton(
          configuration: MyoroButtonConfiguration(
            tooltipConfiguration: MyoroTooltipConfiguration(
              margin: ,
              waitDuration: ,
              text: ,
            ),
            cursor: ,
            borderRadius: ,
            backgroundColorBuilder: ,
            borderBuilder: ,
            onTapDown: ,
            onTapUp: ,
          ),
          builder: (_, MyoroTapStatusEnum tapStatusEnum) => _ButtonContent(tapStatusEnum),
        );
      },
    );
  }
}
