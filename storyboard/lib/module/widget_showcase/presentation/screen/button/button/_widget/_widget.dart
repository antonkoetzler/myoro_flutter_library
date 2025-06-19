part of '../myoro_button_widget_showcase_screen.dart';

/// [Widget] of [MyoroButtonWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel,
      builder: (_, __) {
        return MyoroButton(
          configuration: viewModel.configuration(context),
          builder: (_, MyoroTapStatusEnum tapStatusEnum) => _ButtonContent(tapStatusEnum),
        );
      },
    );
  }
}
