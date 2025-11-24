part of '../widget/myoro_search_dropdown.dart';

/// Input [Widget] of [MyoroSearchDropdown].
final class _Input<T> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSearchDropdownThemeExtension>();
    final style = context.read<MyoroSearchDropdownStyle>();
    final searchButtonIcon = style.searchButtonIcon ?? themeExtension.searchButtonIcon;

    final viewModel = context.read<MyoroSearchDropdownViewModel<T>>();
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
      suffix: searchButtonIcon != null ? _SearchButton<T>() : null,
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
