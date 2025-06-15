part of '../myoro_button_widget_showcase.dart';

/// [Widget] of [MyoroButtonWidgetShowcase].
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
            tooltipConfiguration: viewModel.tooltipEnabled ? MyoroTooltipConfiguration.fake() : null,
            cursor: viewModel.cursor,
            borderRadius: viewModel.borderRadius,
            backgroundColorBuilder:
                viewModel.backgroundColorBuilderEnabled
                    ? (MyoroTapStatusEnum tapStatusEnum) => viewModel.backgroundColorBuilder(viewModel, tapStatusEnum)
                    : null,
            borderBuilder:
                viewModel.borderBuilderEnabled
                    ? (MyoroTapStatusEnum tapStatusEnum) => viewModel.borderBuilder(viewModel, tapStatusEnum)
                    : null,
            onTapDown: viewModel.onTapDownEnabled ? (_) => viewModel.onTapDown(context) : null,
            onTapUp: viewModel.onTapUpEnabled ? (_) => viewModel.onTapUp(context) : null,
          ),
          builder: (_, MyoroTapStatusEnum tapStatusEnum) => _ButtonContent(tapStatusEnum),
        );
      },
    );
  }
}
