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
            tooltipConfiguration: viewModel.tooltipEnabled ? MyoroTooltipConfiguration.fake() : null,
            cursor: viewModel.cursor,
            borderRadius: viewModel.borderRadius,
            backgroundColorBuilder:
                viewModel.backgroundColorBuilderEnabled
                    ? (MyoroTapStatusEnum tapStatusEnum) => _backgroundColorBuilder(viewModel, tapStatusEnum)
                    : null,
            borderBuilder:
                viewModel.borderBuilderEnabled
                    ? (MyoroTapStatusEnum tapStatusEnum) => _borderBuilder(viewModel, tapStatusEnum)
                    : null,
            onTapDown: viewModel.onTapDownEnabled ? (_) => _onTapDown(context) : null,
            onTapUp: viewModel.onTapUpEnabled ? (_) => _onTapUp(context) : null,
          ),
          builder: (_, MyoroTapStatusEnum tapStatusEnum) => _ButtonContent(tapStatusEnum),
        );
      },
    );
  }

  Color _backgroundColorBuilder(MyoroButtonWidgetShowcaseViewModel viewModel, MyoroTapStatusEnum tapStatusEnum) {
    return switch (tapStatusEnum) {
      MyoroTapStatusEnum.idle => viewModel.idleBackgroundColor,
      MyoroTapStatusEnum.hover => viewModel.hoverBackgroundColor,
      MyoroTapStatusEnum.tap => viewModel.tapBackgroundColor,
    };
  }

  BoxBorder _borderBuilder(MyoroButtonWidgetShowcaseViewModel viewModel, MyoroTapStatusEnum tapStatusEnum) {
    return Border.all(
      width: kMyoroBorderLength,
      color: switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => viewModel.idleBorderColor,
        MyoroTapStatusEnum.hover => viewModel.hoverBorderColor,
        MyoroTapStatusEnum.tap => viewModel.tapBorderColor,
      },
    );
  }

  void _onTapDown(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Tap down activated.',
        ),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    context.showSnackBar(
      snackBar: const MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          snackBarType: MyoroSnackBarTypeEnum.attention,
          message: 'Tap up activated.',
        ),
      ),
    );
  }
}
