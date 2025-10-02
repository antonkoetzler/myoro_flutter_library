part of '../bundle/myoro_dropdown_bundle.dart';

/// Merge point of [MyoroSingleDropdown] and [MyoroMultiDropdown].
class _Base<
  T,
  C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  V extends MyoroDropdownViewModel<
    T,
    C,
    MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
  >
>
    extends StatelessWidget {
  const _Base(Key? key, this._viewModel, this._menuStyle, this._child) : super(key: key);

  /// View model.
  final V _viewModel;

  /// Style of the menu.
  final MyoroMenuStyle _menuStyle;

  /// [Widget] that the dropdown belongs to.
  final Widget _child;

  @override
  Widget build(context) {
    // Set the context for the modal and bottom sheet variations.
    _viewModel.context = context;

    final state = _viewModel.state;
    final link = state.link;
    final configuration = state.configuration;
    final dropdownType = configuration.dropdownType;
    final showingController = state.showingController;
    final menuWidget = _viewModel.menuWidget;

    return InheritedProvider.value(
      value: _viewModel,
      child: switch (dropdownType) {
        MyoroDropdownTypeEnum.overlay => OverlayPortal(
          controller: state.overlayPortalController,
          overlayChildBuilder: (_) => Positioned(
            width: state.targetKeySize?.width,
            child: CompositedTransformFollower(
              link: link,
              offset: Offset(0, state.targetKeySize?.height ?? 0),
              child: TapRegion(
                groupId: state.tapRegionGroupId,
                onTapOutside: (_) => _viewModel.disable(),
                child: menuWidget(_menuStyle),
              ),
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
              onTapOutside: isShowing ? (_) => _viewModel.disable() : null,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: TapRegion(groupId: state.tapRegionGroupId, child: _child),
                  ),
                  if (isShowing)
                    Flexible(
                      child: TapRegion(
                        groupId: state.tapRegionGroupId,
                        child: SizedBox(
                          width: state.targetKeySize?.width,
                          child: menuWidget(_menuStyle),
                        ),
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
