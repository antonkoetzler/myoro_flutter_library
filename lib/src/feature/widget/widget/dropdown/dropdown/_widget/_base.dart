part of '../bundle/myoro_dropdown_bundle.dart';

/// Merge point of [MyoroSingleDropdown] and [MyoroMultiDropdown].
class _Base<
  T,
  C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  V extends MyoroDropdownViewModel<T, C>
>
    extends StatelessWidget {
  const _Base(Key? key, this._viewModel, this._style, this._child) : super(key: key);

  /// View model.
  final V _viewModel;

  /// Style.
  final MyoroDropdownStyle _style;

  /// [Widget] that the dropdown belongs to.
  final Widget _child;

  @override
  Widget build(context) {
    // Set the context for the modal and bottom sheet variations.
    _viewModel.context = context;

    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final spacing = _style.spacing ?? themeExtension.spacing ?? 0;

    final state = _viewModel.state;
    final link = state.link;
    final configuration = state.configuration;
    final dropdownType = configuration.dropdownType;
    final showingController = state.showingController;
    final dropdownWidget = _viewModel.dropdownWidget;

    return MultiProvider(
      providers: [
        InheritedProvider.value(value: _viewModel),
        InheritedProvider.value(value: _style),
      ],
      child: switch (dropdownType) {
        MyoroDropdownTypeEnum.overlay => OverlayPortal(
          controller: state.overlayPortalController,
          overlayChildBuilder: (_) => Positioned(
            width: state.targetKeySize?.width,
            child: CompositedTransformFollower(
              link: link,
              offset: Offset(0, (state.targetKeySize?.height ?? 0) + spacing),
              child: TapRegion(
                groupId: state.tapRegionGroupId,
                onTapOutside: (_) => _viewModel.disable(),
                child: dropdownWidget,
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
                spacing: spacing,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: TapRegion(groupId: state.tapRegionGroupId, child: _child),
                  ),
                  if (isShowing)
                    Flexible(
                      child: TapRegion(
                        groupId: state.tapRegionGroupId,
                        child: SizedBox(width: state.targetKeySize?.width, child: dropdownWidget),
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
