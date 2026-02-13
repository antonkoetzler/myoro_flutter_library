part of '../myoro_input_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroInputWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final formController = state.formController;

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        final validationEnabled = state.validationEnabled;

        return MyoroForm(
          controller: formController,
          builder: (_, _) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (validationEnabled) const _ValidationOptionMessage(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Flexible(child: _Input()),
                    if (validationEnabled) const _SubmitButton(),
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
