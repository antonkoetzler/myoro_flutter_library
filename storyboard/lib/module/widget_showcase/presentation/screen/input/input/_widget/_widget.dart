part of '../myoro_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        return MyoroForm(
          controller: viewModel.state.formController,
          builder: (_, formController) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (viewModel.state.validationEnabled) const _ValidationOptionMessage(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Flexible(child: _Input()),
                    if (viewModel.state.validationEnabled) const _SubmitButton(),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}
