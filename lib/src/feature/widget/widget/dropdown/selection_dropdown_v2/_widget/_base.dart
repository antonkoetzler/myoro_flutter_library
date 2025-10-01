part of '../bundle/myoro_selection_dropdown_bundle_v2.dart';

/// Base [Widget] for selection dropdown implementations.
class _Base<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _Base(this._viewModel);

  /// View model.
  final V _viewModel;

  @override
  Widget build(_) {
    final buildDropdownWidget = _viewModel.buildDropdownWidget;

    return InheritedProvider.value(value: _viewModel, child: buildDropdownWidget(_Input<T, V>()));
  }
}
