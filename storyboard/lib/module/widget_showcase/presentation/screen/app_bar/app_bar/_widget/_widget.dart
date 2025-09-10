part of '../myoro_app_bar_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroAppBarWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseScreenViewModel>();
    final appBarThemeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();

    return ListenableBuilder(
      listenable: viewModel.state,
      builder: (_, __) {
        final state = viewModel.state;
        final showBottomDivider = state.showBottomDivider;
        final backgroundColor = state.backgroundColor;

        return MyoroAppBar(
          showBottomDivider: showBottomDivider,
          themeExtension: appBarThemeExtension.copyWith(
            backgroundColor: backgroundColor,
            backgroundColorProvided: backgroundColor != null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(faker.lorem.word()), Icon(myoroFake<IconData>())],
          ),
        );
      },
    );
  }
}
