part of '../widget/myoro_search_input.dart';

/// Input [Widget] of [MyoroSearchInput].
final class _Input<T> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final style = context.read<MyoroSearchInputStyle>();
    final searchButtonIconConfiguration = style.searchButtonIconConfiguration ?? themeExtension.searchButtonIconConfiguration;

    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final state = viewModel.state;
    final label = state.label;
    final inputController = state.inputController;
    final inputKey = state.inputKey;
    final focusNode = state.focusNode;
    final validation = state.validation;
    final onFieldSubmitted = state.onFieldSubmitted;
    final placeholder = state.placeholder;

    return MyoroInput(
      inputKey: inputKey,
      controller: inputController,
      label: label,
      placeholder: placeholder,
      onFieldSubmitted: onFieldSubmitted != null ? (_) => onFieldSubmitted(state.selectedItem) : null,
      suffix: searchButtonIconConfiguration != null ? _SearchButton<T>() : null,
      validation: validation != null
          ? (_) {
              state.showing = false;
              return validation(state.selectedItem);
            }
          : null,
      focusNode: focusNode,
    );
  }
}
