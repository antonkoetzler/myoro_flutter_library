part of '../myoro_input_widget_showcase_screen.dart';

/// Actual [MyoroInput] of [MyoroInputWidgetShowcaseScreen].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    return MyoroInput(
      configuration: viewModel.configuration(context, const _Suffix()),
      formatter: MyoroDateInputFormatter(), // TODO: REMOVE THIS, I WAS USING IT TO REMAKE THE FORMATTER HERE
      HERE KEEP TESTING
    );
  }
}
