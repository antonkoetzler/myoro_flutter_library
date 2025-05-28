part of '../myoro_icon_text_button_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroIconTextButtonWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroIconTextButtonWidgetShowcaseViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroIconTextButton(
          configuration: MyoroIconTextButtonConfiguration(
            invert: viewModel.invert,
            spacing: viewModel.spacing,
            padding: viewModel.padding,
            contentColorBuilder:
                viewModel.enableContentColorBuilder
                    ? (MyoroTapStatusEnum tapStatusEnum) => _contentColorBuilder(viewModel, tapStatusEnum)
                    : null,
            iconConfiguration:
                viewModel.icon != null
                    ? MyoroIconTextButtonIconConfiguration(icon: viewModel.icon!, size: viewModel.iconSize)
                    : null,
            textConfiguration:
                viewModel.text.isNotEmpty
                    ? MyoroIconTextButtonTextConfiguration(
                      text: viewModel.text,
                      maxLines: viewModel.maxLines,
                      overflow: viewModel.overflow,
                      alignment: viewModel.alignment,
                      style: viewModel.style,
                    )
                    : null,
          ),
        );
      },
    );
  }

  Color _contentColorBuilder(MyoroIconTextButtonWidgetShowcaseViewModel viewModel, MyoroTapStatusEnum tapStatusEnum) {
    return switch (tapStatusEnum) {
      MyoroTapStatusEnum.idle => viewModel.idleContentColor,
      MyoroTapStatusEnum.hover => viewModel.hoverContentColor,
      MyoroTapStatusEnum.tap => viewModel.tapContentColor,
    };
  }
}
