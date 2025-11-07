part of '../widget/myoro_dropdown.dart';

/// [State] of [MyoroDropdown].
final class _MyoroDropdownState<T> extends State<MyoroDropdown<T>> {
  /// View model.
  late final MyoroDropdownViewModel<T> _viewModel;

  /// Init function.
  @override
  void initState() {
    super.initState();
    _viewModel = MyoroDropdownViewModel<T>(
      widget.showingController,
      widget.items,
      widget.selectedItems,
      widget.searchCallback,
      widget.dropdownType,
      widget.targetKey,
      widget.itemBuilder,
    );
    final state = _viewModel.state;
    final dropdownType = state.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    final showingController = state.showingController;
    if (isModal || isBottomSheet) showingController.addListener(_showingControllerListener);
  }

  /// Did update function.
  @override
  void didUpdateWidget(MyoroDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final state = _viewModel.state;

    // Listen to [MyoroDropdownState.showingController] if [MyoroDropdown.dropdownType] is modal or bottom sheet.
    final dropdownType = state.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    final showingController = state.showingController;
    if (isModal || isBottomSheet) {
      showingController
        ..removeListener(_showingControllerListener)
        ..addListener(_showingControllerListener);
    }

    // Update [MyoroDropdown] fields.
    state
      ..showingController = widget.showingController
      ..items = widget.items
      ..selectedItems = widget.selectedItems
      ..searchCallback = widget.searchCallback
      ..dropdownType =
          widget.dropdownType ??
          (MyoroPlatformHelper.isMobile ? MyoroDropdownTypeEnum.bottomSheet : MyoroDropdownTypeEnum.expanding)
      ..targetKey = widget.targetKey
      ..itemBuilder = widget.itemBuilder;
  }

  /// Dispose function.
  @override
  void dispose() {
    _viewModel.dispose();
    final state = _viewModel.state;
    final dropdownType = state.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    final showingController = state.showingController;
    if (isModal || isBottomSheet) showingController.removeListener(_showingControllerListener);
    super.dispose();
  }

  /// Build function.
  @override
  Widget build(context) {
    final state = _viewModel.state;
    final baseKey = state.baseKey;
    final link = state.link;
    final showingController = state.showingController;
    final disableDropdown = _viewModel.disableDropdown;
    final dropdownType = state.dropdownType;

    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final expandingAndOverlaySpacing = themeExtension.expandingAndOverlaySpacing ?? 0;

    return MultiProvider(
      key: baseKey,
      providers: [
        InheritedProvider.value(value: widget.style),
        InheritedProvider.value(value: _viewModel),
      ],
      child: switch (dropdownType) {
        MyoroDropdownTypeEnum.overlay => OverlayPortal(
          controller: state.overlayPortalController,
          overlayChildBuilder: (_) => Positioned(
            width: state.targetKeySize?.width,
            child: CompositedTransformFollower(
              link: link,
              offset: Offset(0, (state.targetKeySize?.height ?? 0) + expandingAndOverlaySpacing),
              child: TapRegion(
                groupId: state.tapRegionGroupId,
                onTapOutside: (_) => disableDropdown(),
                child: _Menu<T>(),
              ),
            ),
          ),
          child: TapRegion(
            groupId: state.tapRegionGroupId,
            child: CompositedTransformTarget(link: link, child: widget.child),
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
                spacing: expandingAndOverlaySpacing,
                children: [
                  Flexible(
                    child: TapRegion(groupId: state.tapRegionGroupId, child: widget.child),
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
        MyoroDropdownTypeEnum.modal => widget.child,
        MyoroDropdownTypeEnum.bottomSheet => widget.child,
      },
    );
  }

  /// Listener for [MyoroDropdownState.showingController].
  void _showingControllerListener() {
    final state = _viewModel.state;
    final dropdownType = state.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    final showing = state.showing;
    if (!(isModal || isBottomSheet)) return;
    showing
        ? MyoroModal.show(
            context,
            isBottomSheet: isBottomSheet,
            child: MultiProvider(
              providers: [
                InheritedProvider.value(value: widget.style),
                InheritedProvider.value(value: _viewModel),
              ],
              child: _Menu<T>(),
            ),
          )
        : context.navigator.pop();
  }
}
