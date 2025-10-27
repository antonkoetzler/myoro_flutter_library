part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Base [Widget] of a selection dropdown.
final class _Base<T> extends StatelessWidget {
  const _Base(this._dropdownType, this._request, this._itemBuilder);

  /// Dropdown type.
  final MyoroDropdownTypeEnum _dropdownType;

  /// Request.
  final MyoroMenuRequest<T> _request;

  /// Item builder.
  final MyoroMenuItemBuilder<T> _itemBuilder;

  @override
  Widget build(_) {
    return MyoroDropdown(
      showingController: showingController,
      selectedItemsController: selectedItemsController,
      dropdownType: _dropdownType,
      targetKey: targetKey,
      request: _request,
      itemBuilder: _itemBuilder,
      child: _Input(),
    );
  }
}
