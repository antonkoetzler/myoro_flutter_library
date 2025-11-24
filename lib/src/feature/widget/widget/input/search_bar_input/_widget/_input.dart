part of '../widget/myoro_search_bar_input.dart';

/// Actual [MyoroInput] of [MyoroSearchBarInput].
final class _Input extends StatelessWidget {
  /// Default constructor.
  const _Input();

  /// Build function.
  @override
  Widget build(context) {
    final style = context.read<MyoroSearchBarInputStyle>();

    final localization = context.localization;
    final myoroSearchBarInputLabel = localization.myoroSearchBarInputLabel;
    final myoroSearchBarInputPlaceholder = localization.myoroSearchBarInputPlaceholder;

    final viewModel = context.read<MyoroSearchBarInputViewModel>();
    final state = viewModel.state;
    final controller = state.controller;
    final inputStyle = state.inputStyle;
    final label = state.label.isNotEmpty ? state.label : myoroSearchBarInputLabel;
    final placeholder = state.placeholder.isNotEmpty ? state.placeholder : myoroSearchBarInputPlaceholder;

    return MyoroInput(
      style: style,
      inputStyle: inputStyle,
      label: label,
      placeholder: placeholder,
      controller: controller,
    );
  }
}
