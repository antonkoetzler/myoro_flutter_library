part of '../myoro_app_bar_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroAppBarWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseScreenViewModel>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        final state = viewModel.state;
        final showBottomDivider = state.showBottomDivider;

        return MyoroAppBar(
          showBottomDivider: showBottomDivider,
          style: viewModel.buildStyle(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(faker.lorem.word()), Icon(myoroFake<IconData>())],
          ),
        );
      },
    );
  }
}
