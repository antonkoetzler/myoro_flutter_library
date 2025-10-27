part of '../bundle/myoro_dropdown_bundle.dart';

/// Generic dropdown [Widget].
///
/// Stores the child [Widget] (call to action) and the dropdown [MyoroMenu].
class _Base<T> extends StatelessWidget {
  const _Base(this._controller, this._menuStyle, this._dropdownType, this._targetKey, this._request, this._itemBuilder, this._child);

  final MyoroDropdownController<T> _controller;
  final MyoroMenuStyle _menuStyle;
  final MyoroDropdownTypeEnum _dropdownType;
  final GlobalKey? _targetKey;
  final MyoroMenuRequest<T> _request;
  final MyoroMenuItemBuilder<T> _itemBuilder;
  final Widget _child;

  @override
  Widget build(_) {
    final viewModel = MyoroDropdownViewModel<T>(_controller, _dropdownType, _targetKey, _request, _itemBuilder);
    final state = viewModel.state;
    final baseKey = state.baseKey;
    final disableDropdown = viewModel.disableDropdown;
    final showingController = _controller.showingController;
    final link = state.link;

    return MultiProvider(
      key: baseKey,
      providers: [
        InheritedProvider.value(value: _menuStyle),
        InheritedProvider.value(value: viewModel),
      ],
      child: switch (_dropdownType) {
        MyoroDropdownTypeEnum.overlay => OverlayPortal(
          controller: state.overlayPortalController,
          overlayChildBuilder: (_) => Positioned(
            width: state.targetKeySize?.width,
            child: CompositedTransformFollower(
              link: link,
              offset: Offset(0, state.targetKeySize?.height ?? 0),
              child: TapRegion(groupId: state.tapRegionGroupId, onTapOutside: (_) => disableDropdown(), child: _Menu<T>()),
            ),
          ),
          child: TapRegion(
            groupId: state.tapRegionGroupId,
            child: CompositedTransformTarget(link: link, child: _child),
          ),
        ),
        MyoroDropdownTypeEnum.expanding => ValueListenableBuilder(
          valueListenable: showingController,
          builder: (_, bool isShowing, _) {
            return TapRegion(
              groupId: state.tapRegionGroupId,
              onTapOutside: isShowing ? (_) => disableDropdown() : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: TapRegion(groupId: state.tapRegionGroupId, child: _child),
                  ),
                  if (isShowing)
                    Flexible(
                      child: TapRegion(
                        groupId: state.tapRegionGroupId,
                        child: SizedBox(width: state.targetKeySize?.width, child: _Menu<T>()),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
        MyoroDropdownTypeEnum.modal => _child,
        MyoroDropdownTypeEnum.bottomSheet => _child,
      },
    );
  }
}
